// (c) Copyright Microsoft Corporation.
// This source is subject to the Microsoft Permissive License.
// See http://www.microsoft.com/resources/sharedsource/licensingbasics/sharedsourcelicenses.mspx.
// All other rights reserved.


Type.registerNamespace('AjaxControlToolkit');

AjaxControlToolkit.ModalPopupBehavior = function(element) {
    AjaxControlToolkit.ModalPopupBehavior.initializeBase(this, [element]);
    
    //
    // Variables
    //

    // Properties
    this._PopupControlID = null;
    this._BackgroundCssClass = null;
    this._DropShadow = false;
    this._OkControlID = null;
    this._CancelControlID = null;
    this._OnOkScript = null;
    this._OnCancelScript = null;

    // Variables
    this._backgroundElement = null;
    this._foregroundElement = null;
    this._iframeElement = null;	//EDE
    this._showHandler = null;
    this._okHandler = null;
    this._cancelHandler = null;
    this._scrollHandler = null;
    this._resizeHandler = null;
    this._windowHandlersAttached = false;

    this._dropShadowBehavior = null;

    this._saveTabIndexes = new Array();
    this._saveDesableSelect = new Array();
    this._tagWithTabIndex = new Array('A','BUTTON','TEXTAREA','INPUT','IFRAME');
}
AjaxControlToolkit.ModalPopupBehavior.prototype = {
    //
    // Overrides
    //

    initialize : function() {
        AjaxControlToolkit.ModalPopupBehavior.callBaseMethod(this, 'initialize');

        this._foregroundElement = $get(this._PopupControlID);
        this._backgroundElement = document.createElement('div');
        this._backgroundElement.style.display = 'none';
        this._backgroundElement.style.position = 'absolute';
        // Want zIndex to big enough that the background sits above everything else
        // CSS 2.1 defines no bounds for the <integer> type, so pick arbitrarily
        this._backgroundElement.style.zIndex = 10000;
        if (this._BackgroundCssClass) {
            this._backgroundElement.className = this._BackgroundCssClass;
        }
        this._foregroundElement.parentNode.appendChild(this._backgroundElement);

        this._foregroundElement.style.display = 'none';
        this._foregroundElement.style.position = 'absolute';
        this._foregroundElement.style.zIndex = CommonToolkitScripts.getCurrentStyle(this._backgroundElement, 'zIndex', this._backgroundElement.style.zIndex) + 1;

		  //EDE
		  var childFrame;
		  var elt = this._foregroundElement;
		  // copied from  PreviewScript.js function Sys$Preview$UI$PopupBehavior$show
        childFrame = document.createElement("iframe");
        childFrame.src = "about:blank";
        childFrame.style.position = "absolute";
        childFrame.style.display = "none";
        childFrame.scrolling = "no";
        childFrame.frameBorder = "0";
        childFrame.style.filter = "progid:DXImageTransform.Microsoft.Alpha(style=0,opacity=0)";
        elt.parentNode.insertBefore(childFrame, elt);
        // end copied
        this._iframeElement = childFrame;
			//END EDE

        this._showHandler = Function.createDelegate(this, this._onShow);
        $addHandler(this.get_element(), 'click', this._showHandler);

        if (this._OkControlID) {
            this._okHandler = Function.createDelegate(this, this._onOk);
            $addHandler($get(this._OkControlID), 'click', this._okHandler);
        }

        if (this._CancelControlID) {
            this._cancelHandler = Function.createDelegate(this, this._onCancel);
            $addHandler($get(this._CancelControlID), 'click', this._cancelHandler);
        }

        this._scrollHandler = Function.createDelegate(this, this._onLayout);
        this._resizeHandler = Function.createDelegate(this, this._onLayout);
    },

    dispose : function() {
        if (this._dropShadowBehavior) {
            this._detachPopup();
        }
        this._scrollHandler = null;
        this._resizeHandler = null;

        if (this._cancelHandler && $get(this._CancelControlID)) {
            $removeHandler($get(this._CancelControlID), 'click', this._cancelHandler);
            this._cancelHandler = null;
        }

        if (this._okHandler && $get(this._OkControlID)) {
            $removeHandler($get(this._OkControlID), 'click', this._okHandler);
            this._okHandler = null;
        }

        if (this._showHandler) {
            $removeHandler(this.get_element(), 'click', this._showHandler);
            this._showHandler = null;
        }
        
        AjaxControlToolkit.ModalPopupBehavior.callBaseMethod(this, 'dispose');
    },

//    getDescriptor : function() {
//        var td = AjaxControlToolkit.ModalPopupBehavior.callBaseMethod(this, 'getDescriptor');
//        //  Add property declarations
//        td.addProperty('PopupControlID', String);
//        td.addProperty('BackgroundCssClass', String);
//        td.addProperty('DropShadow', Boolean);
//        td.addProperty('OkControlID', String);
//        td.addProperty('CancelControlID', String);
//        td.addProperty('OnOkScript', String);
//        td.addProperty('OnCancelScript', String);
//        return td;
//    },

    //
    // Custom methods
    //

    _attachPopup : function() {
        if (this._DropShadow && !this._dropShadowBehavior) {
            this._dropShadowBehavior = $create(AjaxControlToolkit.DropShadowBehavior, {}, null, null, this._foregroundElement);
        }

        $addHandler(window, 'resize', this._resizeHandler);
        $addHandler(window, 'scroll', this._scrollHandler);
        this._windowHandlersAttached = true;
    },

    _detachPopup : function() {
        if (this._windowHandlersAttached) {
            if (this._scrollHandler) {
                $removeHandler(window, 'scroll', this._scrollHandler);
            }

            if (this._resizeHandler) {
                $removeHandler(window, 'resize', this._resizeHandler);
            }
        }

        if (this._dropShadowBehavior) {
            this._dropShadowBehavior.dispose();
            this._dropShadowBehavior = null;
        }
    },

    _onShow : function(e) {
        if (!this.get_element().disabled) {
            this.show();
            e.preventDefault();
            return false;
        }
    },

    _onOk : function(e) {
        var element = $get(this._OkControlID);
        if (element && !element.disabled) {
            this.hide();
            e.preventDefault();
            if (this._OnOkScript) {
                window.setTimeout(this._OnOkScript, 0);
            }
            return false;
        }
    },

    _onCancel : function(e) {
        var element = $get(this._CancelControlID);
        if (element && !element.disabled) {
            this.hide();
            e.preventDefault();
            if (this._OnCancelScript) {
                window.setTimeout(this._OnCancelScript, 0);
            }
            return false;
        }
    },

    _onLayout : function() {
        this._layout();
    },

    show : function() {
        AjaxControlToolkit.ModalPopupBehavior.callBaseMethod(this, 'populate');

        this._attachPopup();

        this._backgroundElement.style.display = '';
        this._foregroundElement.style.display = '';
        this._iframeElement.style.display = '';

        // Disable TAB
        this.disableTab();

        this._layout();
        // On pages that don't need scrollbars, Firefox and Safari act like
        // one or both are present the first time the layout code runs which
        // obviously leads to display issues - run the layout code a second
        // time to work around this problem
        this._layout();
    },

    disableTab : function() {
        var i = 0;
        var tagElements;
        var tagElementsInPopUp = new Array();
        this._saveTabIndexes.clear();

        //Save all popup's tag in tagElementsInPopUp
        for (var j = 0; j < this._tagWithTabIndex.length; j++) {
            tagElements = this._foregroundElement.getElementsByTagName(this._tagWithTabIndex[j]);
            for (var k = 0 ; k < tagElements.length; k++) {
                tagElementsInPopUp[i] = tagElements[k];
                i++;
            }
        }

        i = 0;
        for (var j = 0; j < this._tagWithTabIndex.length; j++) {
            tagElements = document.getElementsByTagName(this._tagWithTabIndex[j]);
            for (var k = 0 ; k < tagElements.length; k++) {
                if (tagElementsInPopUp.indexOf(tagElements[k]) == -1)  {
                    this._saveTabIndexes[i] = {tag: tagElements[k], index: tagElements[k].tabIndex};
                    tagElements[k].tabIndex="-1";
                    i++;
                }
            }
        }

        //IE6 Bug with SELECT element always showing up on top
        i = 0;
        if ((Sys.Browser.agent === Sys.Browser.InternetExplorer) && (Sys.Browser.version < 7)) {
            //Save SELECT in PopUp
            var tagSelectInPopUp = new Array();
            for (var j = 0; j < this._tagWithTabIndex.length; j++) {
                tagElements = this._foregroundElement.getElementsByTagName('SELECT');
                for (var k = 0 ; k < tagElements.length; k++) {
                    tagSelectInPopUp[i] = tagElements[k];
                    i++;
                }
            }

            i = 0;
            this._saveDesableSelect.clear();
            tagElements = document.getElementsByTagName('SELECT');
            for (var k = 0 ; k < tagElements.length; k++) {
                if (tagSelectInPopUp.indexOf(tagElements[k]) == -1)  {
					     // EDE
                    //this._saveDesableSelect[i] = {tag: tagElements[k], visib: CommonToolkitScripts.getCurrentStyle(tagElements[k], 'visibility')} ;
                    //tagElements[k].style.visibility = 'hidden';
                    this._saveDesableSelect[i] = {tag: tagElements[k], visib: tagElements[k].disabled} ;
                    tagElements[k].disabled = true;
                    // END EDE
                    i++;
                }
            }
        }
    },

    restoreTab : function() {
        for (var i = 0; i < this._saveTabIndexes.length; i++) {
            this._saveTabIndexes[i].tag.tabIndex = this._saveTabIndexes[i].index;
        }

        //IE6 Bug with SELECT element always showing up on top
        if ((Sys.Browser.agent === Sys.Browser.InternetExplorer) && (Sys.Browser.version < 7)) {
            for (var k = 0 ; k < this._saveDesableSelect.length; k++) {
                // EDE
                //this._saveDesableSelect[k].tag.style.visibility = this._saveDesableSelect[k].visib;
                this._saveDesableSelect[k].tag.disabled = this._saveDesableSelect[k].visib;
                // END EDE
            }
        }
    },

    hide : function() {
        this._backgroundElement.style.display = 'none';
        this._foregroundElement.style.display = 'none';

        this.restoreTab();

        this._detachPopup();
    },

    _layout : function() {
        var scrollLeft = (document.documentElement.scrollLeft ? document.documentElement.scrollLeft : document.body.scrollLeft);
        var scrollTop = (document.documentElement.scrollTop ? document.documentElement.scrollTop : document.body.scrollTop);
        var clientWidth;
        if (window.innerWidth) {
            clientWidth = ((Sys.Browser.agent === Sys.Browser.Safari) ? window.innerWidth : Math.min(window.innerWidth, document.documentElement.clientWidth));
        } else {
            clientWidth = document.documentElement.clientWidth;
        }
        var clientHeight;
        if (window.innerHeight) {
            clientHeight = ((Sys.Browser.agent === Sys.Browser.Safari) ? window.innerHeight : Math.min(window.innerHeight, document.documentElement.clientHeight));
        } else {
            clientHeight = document.documentElement.clientHeight;
        }

        this._backgroundElement.style.left = scrollLeft+'px';
        this._backgroundElement.style.top = scrollTop+'px';
        this._backgroundElement.style.width = clientWidth+'px';
        this._backgroundElement.style.height = clientHeight+'px';
        this._foregroundElement.style.left = scrollLeft+((clientWidth-this._foregroundElement.offsetWidth)/2)+'px';
        this._foregroundElement.style.top = scrollTop+((clientHeight-this._foregroundElement.offsetHeight)/2)+'px';

		  //EDE
		  var childFrame = this._iframeElement;
		  var elt = this._foregroundElement;
		  // copied from  PreviewScript.js function Sys$Preview$UI$PopupBehavior$show
		  childFrame.style.top = elt.style.top;
        childFrame.style.left = elt.style.left;
        childFrame.style.width = elt.offsetWidth + "px";
        childFrame.style.height = elt.offsetHeight + "px";
        childFrame.style.display = elt.style.display;
        if (elt.currentStyle && elt.currentStyle.zIndex) {
			   childFrame.style.zIndex = elt.currentStyle.zIndex;
        }
        else if (elt.style.zIndex) {
            childFrame.style.zIndex = elt.style.zIndex;
        }
		  // end copied
		  //END EDE
        if (this._dropShadowBehavior) {
            this._dropShadowBehavior.setShadow();
            window.setTimeout(Function.createDelegate(this, this._fixupDropShadowBehavior), 0);
        }
    },

    // Some browsers don't update the location values immediately, so
    // the location of the drop shadow would always be a step behind
    // without this method
    _fixupDropShadowBehavior : function() {
        if (this._dropShadowBehavior) {
            this._dropShadowBehavior.setShadow();
        }
    },

    //
    // Property get/set methods
    //

    get_PopupControlID : function() {
        return this._PopupControlID;
    },

    set_PopupControlID : function(value) {
        if (this._PopupControlID != value) {
            this._PopupControlID = value;
            this.raisePropertyChanged('PopupControlID');
        }
    },

    get_BackgroundCssClass : function() {
        return this._BackgroundCssClass;
    },

    set_BackgroundCssClass : function(value) {
        if (this._BackgroundCssClass != value) {
            this._BackgroundCssClass = value;
            this.raisePropertyChanged('BackgroundCssClass');
        }
    },

    get_DropShadow : function() {
        return this._DropShadow;
    },

    set_DropShadow : function(value) {
        if (this._DropShadow != value) {
            this._DropShadow = value;
            this.raisePropertyChanged('DropShadow');
        }
    },

    get_OkControlID : function() {
        return this._OkControlID;
    },

    set_OkControlID : function(value) {
        if (this._OkControlID != value) {
            this._OkControlID = value;
            this.raisePropertyChanged('OkControlID');
        }
    },

    get_CancelControlID : function() {
        return this._CancelControlID;
    },

    set_CancelControlID : function(value) {
        if (this._CancelControlID != value) {
            this._CancelControlID = value;
            this.raisePropertyChanged('CancelControlID');
        }
    },

    get_OnOkScript : function() {
        return this._OnOkScript;
    },

    set_OnOkScript : function(value) {
        if (this._OnOkScript != value) {
            this._OnOkScript = value;
            this.raisePropertyChanged('OnOkScript');
        }
    },

    get_OnCancelScript : function() {
        return this._OnCancelScript;
    },

    set_OnCancelScript : function(value) {
        if (this._OnCancelScript != value) {
            this._OnCancelScript = value;
            this.raisePropertyChanged('OnCancelScript');
        }
    }
}

// This static function (that is intended to be called from script emitted
// on the server) will show or hide the behavior associated with behaviorID
// (i.e. to use this, the ModalPopupProperties must have an ID) and will
// either show or hide depending on the show parameter.
AjaxControlToolkit.ModalPopupBehavior.invokeViaServer = function(behaviorID, show) {
    var behavior = $find(behaviorID);
    if (behavior) {
        if (show) {
            behavior.show();
        } else {
            behavior.hide();
        }
    }
}

AjaxControlToolkit.ModalPopupBehavior.registerClass('AjaxControlToolkit.ModalPopupBehavior', AjaxControlToolkit.DynamicPopulateBehaviorBase);
