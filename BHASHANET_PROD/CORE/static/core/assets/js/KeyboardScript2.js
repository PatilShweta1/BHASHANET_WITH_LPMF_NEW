
/**
 * Created by MUKUL SAINI.
 * Script for Floating Keyboard in chrome plugin / extension popup
 * Version 3.0.0
    VERSION SPECIFIC FOR IDN EXTENSIONS
    1. Has support for english in bar
    2. open close reopen causing change in position issue is solved
    3. santhali and telugu were not showing properly - updated
    4. design keyboard - inline sunction of mousehover and mouseover exit are removed as not allowed in popup
 */
var jsFolderPath = "/static/core/assets";
// vainu updated for jsnew folder name

function openKeyboard(n, t, i) {
    var f, r, u;
    curleft = 0,
        curtop = 0
    try {
        if (isKBDOpen && (closeKeyboard(),
            curleft = 0,
            curtop = 0),
            n != null && n != undefined)
            if (f = $.inArray(n.toLowerCase(), languageSupport) == -1 ? !1 : !0,
                f) {
                if (r = null,
                    i != null && i != undefined) {
                    if (r = i,
                        u = document.getElementById(r),
                        u.offsetParent)
                        do
                            curleft += u.offsetLeft,
                                curtop += u.offsetTop;
                        while (u = u.offsetParent); curleft < g_MarginFromWindow && (curleft = g_MarginFromWindow);
                    $("#" + r).addClass("gist_flt_kbdBX backgroundClrTheme1");
                    $("#" + r).attr("align", "center")
                } else
                    $(document.body).append("<div id='gistFK_kbdBox' class='gist_flt_kbdBX backgroundClrTheme1' align='center'><\/div>"),
                        r = "gistFK_kbdBox",
                        curleft == 0 && curtop == 0 && (curtop = $(window).height() / 2 - 109,
                            curleft = $(window).width() / 2 - 265),
                        $("#" + r).draggable({
                            containment: window.document.body
                        });
                g_KeyboardContainer = $("#" + r);
                t != null && t != undefined && (g_ID_Array = t);
                $("#" + r).html(designKeyboard());
                setLanguageOnKeyboard(n.toLowerCase());
                $("#" + r).css({
                    left: curleft + "px"
                });
                $("#" + r).css({
                    top: curtop + "px"
                });
                $("#" + r).show();
                isKBDOpen = !0
                //					

            } else
                alert("Sorry! There is no support for " + n + " language.");
        else
            document.getElementById(g_KeyboardContainer) && closeKeyboard()
    } catch (e) {
    }
}
function closeKeyboard() {
    try {
        $(g_KeyboardContainer).html("");
        $(g_KeyboardContainer).removeClass("gist_flt_kbdBX");
        document.getElementById("gistFK_kbdBox") && $("#gistFK_kbdBox").remove();
        $(g_ActiveObj).css("font-family", g_PreviousFontFamily);
        $(g_ActiveObj).focus();
        setCursorPosition(g_ActiveObj, caretPos);
        isKBDOpen = !1;
    } catch (n) { }

}
function changeKeyboardLanguage(n) {
    try {
        n = n.toLowerCase();
        // vainu added english support and kashmiripa support
        // the complicated line below is minified from a function getLanguageName which is not called anywhere else 
        // so minification brought under this function as one line
        n == "hi_in" || n == "hin" ? n = "hindi" : n == "en_in" || n == "eng" ? n = "English" : n == "SindhiPa" || n == "SindhiPa" ? n = "SindhiPa" : n == "gj_in" || n == "guj" ? n = "gujarati" : n == "mr_in" || n == "mar" ? n = "marathi" : n == "pn_in" || n == "pan" ? n = "punjabi" : n == "ml_in" || n == "mal" ? n = "malayalam" : n == "bn_in" || n == "ban" ? n = "bengali" : n == "ur_in" || n == "urd" ? n = "urdu" : n == "kn_in" || n == "kan" ? n = "kannada" : n == "as_in" || n == "asm" ? n = "assamese" : n == "bd_in" || n == "brx" ? n = "bodo" : n == "NA" || n == "dgr" ? n = "dogri" : n == "ks_in" || n == "kas" ? n = "kashmiripa" : n == "ks_pa" || n == "kas" ? n = "kashmiripa" : n == "NA" || n == "knn" ? n = "konkani" : n == "NA" || n == "mai" ? n = "maithili" : n == "NA" || n == "mni" ? n = "manipuri" : n == "NA" || n == "met" ? n = "meeteimayek" : n == "ne_in" || n == "nep" ? n = "nepali" : n == "NA" || n == "olc" ? n = "olchiki" : n == "or_in" || n == "ory" ? n = "oriya" : n == "sa_in" || n == "san" ? n = "sanskrit" : n == "NA" || n == "sat" ? n = "santhali" : n == "sd" || n == "snd" ? n = "sindhidev" : n == "ta_in" || n == "tam" ? n = "tamil" : (n == "te_in" || n == "tel") && (n = "telugu");

        (isKBDOpen && (n != null || typeof n != "undefined") || g_CurrentLanguage != n) && (n != g_CurrentLanguage && (g_CurrentLanguage = n),
            setLanguageOnKeyboard(n),
            g_ActiveObj != null && (getkeyboardCaretPosition(g_ActiveObj),
                setCursorPosition(g_ActiveObj, caretPos)))
    } catch (t) { }
}
function onlyAllowTypingOnKbdOpen(n) {
    g_EnableTypingOnlyOnKBDOpen = n == !0 ? 1 : 0
}
function executeAfterClick(n) {
    try {
        if (isKBDOpen || !isKBDOpen && g_EnableTypingOnlyOnKBDOpen == 0) {
            $.trim(g_ID_Array).length > 0 ? checkID(n) ? (g_ActiveObj = n,
                g_PreviousFontFamily = $(n).css("font-family"),
                g_PreviousFontFamily != "gist_" + g_CurrentLanguage + "_font" && $(n).css("font-family", "gist_" + g_CurrentLanguage + "_font")) : g_ActiveObj = null : g_ActiveObj = n;
            $(g_ActiveObj).attr("contenteditable") == "true" && $(g_ActiveObj).css("white-space", "pre");
            var t = navigator.userAgent.toLowerCase();
            /android/gi.test(t) && (isKBDOpen || g_EnableTypingOnlyOnKBDOpen == 0) && $(g_ActiveObj).attr("readonly", !0);
            setFontOnInputBox(g_CurrentLanguage)
        } else {
            g_ActiveObj = "";
            return
        }
    } catch (i) { }
}
function keyDownOnInputBox(n, t) {
    var r, i;
    try {
        for (n.preventDefault(),
            r = asciiArray.length,
            i = 0; i < r; i++)
            if (t == asciiArray[i])
                if (i >= 47 && isShiftPressed || i >= 47 && n.shiftKey)
                    if (lChecked) {
                        t = mapShiftExtArray[i - 47];
                        break
                    } else {
                        t = mapShiftArray[i - 47];
                        break
                    }
                else if (i >= 47 && !isShiftPressed || i >= 47 && !n.shiftKey)
                    if (lChecked) {
                        t = mapExtArray[i - 47];
                        break
                    } else {
                        t = mapArray[i - 47];
                        break
                    }
                else if (i < 47 && isShiftPressed || i < 47 && n.shiftKey)
                    if (lChecked) {
                        t = mapShiftExtArray[i];
                        break
                    } else {
                        t = mapShiftArray[i];
                        break
                    }
                else if (i < 47 && !isShiftPressed || i < 47 && !n.shiftKey)
                    if (lChecked) {
                        t = mapExtArray[i];
                        break
                    } else {
                        t = mapArray[i];
                        break
                    }
                else if (i > 47)
                    if (lChecked) {
                        t = mapExtArray[i - 47];
                        break
                    } else {
                        t = mapArray[i - 47];
                        break
                    }
                else if (i < 47)
                    if (lChecked) {
                        t = mapShiftExtArray[i];
                        break
                    } else {
                        t = mapShiftArray[i];
                        break
                    }
        $.trim(t).length > 0 && !n.ctrlKey && insertValue(t)
    } catch (n) { }
}

function designKeyboard() {
    // vainu : Note 
    // the layout of the keyboard is generated in this function

    try {
        // vainu updated combobox to add english
        // vainu had to remove inline javascript of on mouseover - in and out : because inline javascript is not allowed in the extension popup

        // idns are present for        kashmiri(pa), santali(dv), manipuri(bn),  and Konkani(dv),
        // needed to remove from combo kashmiridev,  olchiki,     meiteimayak, 
        // - so commented them in select tag below
        //Konkani (RM) is not applicable 




        // small return "<div id='gist_flt_kbdBX_firstInnerBox'><div id='gistFK_wdrag' class='gist_flt_wdrag gist_flt_wdrag_Theme1'><div id='gistFK_kbdTitle' >Enhanced INSCRIPT (IS:16350)<\/div><select id='gistFK_selectLang'><option style='display:none;'>Language<\/option>  <option value='hindi'>Hindi</option>                				<option value='assamese'>Assamese</option>                				<option value='bengali'>Bengali</option>               				<option value='bodo'>Bodo</option>                				<option value='dogri'>Dogri</option>                				<option value='gujarati'>Gujarati</option>            				<option value='kannada'>Kannada</option>                				<!--<option value='kashmiridev'>Kashmiridev</option>-->	<option value='kashmiripa'>Kashmiri</option>                				<option value='konkani'>Konkani</option>				<option value='maithili'>Maithili</option>				<option value='malayalam'>Malayalam</option>                				<option value='manipuri'>Manipuri</option>  				<!--<option value='meeteimayek'>Manipuri-MeeteiMayek</option>-->                				<option value='marathi'>Marathi</option>  								<option value='nepali'>Nepali</option>                				                				<option value='oriya'>Oriya</option>				<option value='punjabi'>Punjabi</option>                				<option value='sanskrit'>Sanskrit</option>                				<option value='santhali'>Santali</option>				<!--<option value='olchiki'>Santali-OlChiki</option>-->                				<option value='sindhiDev'>SindhiDev</option>				<option value='sindhipa'>SindhiPa</option>                				<option value='tamil'>Tamil</option>                				<option value='telugu'>Telugu</option>                				<option value='urdu'>Urdu</option>						<option value='English'>English</option><\/select><div id='gistFK_kbdClose'><img id='gistFK_CloseBtn' class='gistFK_Close_Btn' alt='Close' src=" + closeImageURL + "><\/div><\/div><div id='gistFK_kbdButtons'><div id='firstRowBTN'><input type='button' id='gistFK_b1' title='~' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b2' title='1' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b3' title='2' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b4' title='3' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b5' title='4' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b6' title='5' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b7' title='6' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b8' title='7' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b9' title='8' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b10' title='9' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b11' title='0' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b12' title='-' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b13' title='=' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_Bksp' title='Backspace' value='Bksp' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style=''/><\/div><div id='firstRowBTN'><input type='button' id='gistFK_Tab' title='Tab' value='Tab' class='gist_flt_kbdBtnDisable commonButtonStyle themeBorder1' style='width: 28pt !important;' disabled = 'disabled'/><input type='button' id='gistFK_b14' title='Q' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b15' title='W' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b16' title='E' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b17' title='R' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b18' title='T' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b19' title='Y' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b20' title='U' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b21' title='I' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b22' title='O' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b23' title='P' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b24' title='[' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b25' title=']' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b26' title='\\' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><\/div><div id='firstRowBTN'><input type='button' id='gistFK_Lock' title='Caps Lock' value='Caps' class='gist_flt_kbdBtnDisable commonButtonStyle themeBorder1' style='width: 30pt !important;' disabled = 'disabled'/><input type='button' id='gistFK_b27' title='A' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b28' title='S' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b29' title='D' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b30' title='F' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b31' title='G' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b32' title='H' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b33' title='J' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b34' title='K' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b35' title='L' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b36' title=';' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b37' title=''' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_Enter' title='Enter' value='Enter' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style=''/><\/div><div id='firstRowBTN'><input type='button' id='gistFK_btnShift1' title='Shift' value='Shift' class='commonButtonStyle themeBorder1 themeBackground1 gist_flt_kbd_shiftUp' style=''/><input type='button' id='gistFK_b38' title='Z' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b39' title='X' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b40' title='C' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b41' title='V' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b42' title='B' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b43' title='N' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b44' title='M' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b45' title=',' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b46' title='.' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b47' title='/' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_btnShift2' title='Shift' value='Shift' class='commonButtonStyle themeBorder1 themeBackground1 gist_flt_kbd_shiftUp' style=' !important;'/><\/div><\/div><div id='gistFK_BottomBar'><a href='http://cdac.in/' target='_blank' title='CDAC'><img id='gistFK_cdacLogo' alt='CDAC' src=" + companyImageURL + " style='width:10px'><\/a><a href='http://www.cdac.in/index.aspx?id=gist' target='_blank' title='CDAC GIST'><img id='gistFK_gistLogo' alt='CDAC GIST' src=" + groupImageURL + "><\/a><input type='button' id='gistFK_SpaceBar' title='Space' value=' ' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style='float: left !important;'/><input type='button' id='gistFK_lchange' title='Change Layout' value='AltGr' class='commonButtonStyle themeBorder1 themeBackground1 gistFK_lchange_Up' style='float: left !important;'/> <input type='button' id='gistFK_plugin_atRate' style='float: left !important;' title='@' value='@' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'> <input type='button' id='gistFK_plugin_atBharat' title='.भारत' value='.भारत' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style='width:30pt !important; float: left !important;' ><div id='gistFK_themes'><input type='button' title='Theme Blue' id='gistFK_theme1' value='' class='gistFK_SmallBox'/><input type='button' title='Theme Gray' id='gistFK_theme2' value='' class='gistFK_SmallBox'/><input type='button' title='Theme Green' id='gistFK_theme3' value='' class='gistFK_SmallBox'/><\/div><\/div><\/div>"
        //big
        return "<div id='gist_flt_kbdBX_firstInnerBox'><div id='gistFK_wdrag' class='gist_flt_wdrag gist_flt_wdrag_Theme1'><div id='gistFK_kbdTitle' >Inscript Keyboard<\/div><div id='gistFK_kbdLanguage' class='gistFK_langmenu'><select id='gistFK_selectLang'><option style='display:none;'>Select Language<\/option>		        <option value='hindi'>Hindi</option>                <option value='assamese'>Assamese</option>                <option value='bengali'>Bengali</option>                <option value='bodo'>Bodo</option>                <option value='dogri'>Dogri</option>                <option value='gujarati'>Gujarati</option>                <option value='punjabi'>Punjabi</option>                <option value='malayalam'>Malayalam</option>                <option value='marathi'>Marathi</option>                <option value='kannada'>Kannada</option>                <option value='kashmiripa'>Kashmiri</option>                <option value='konkani'>Konkani</option>                <option value='maithili'>Maithili</option>                <option value='manipuri'>Manipuri</option>                <option value='meeteimayek'>MeeteiMayek</option>                <option value='nepali'>Nepali</option>                <option value='olchiki'>OlChiki</option>                <option value='oriya'>Oriya</option>                <option value='sanskrit'>Sanskrit</option>                <option value='santhali'>Santhali</option>                <option value='sindhiDev'>SindhiDev</option>                <option value='tamil'>Tamil</option>                <option value='telugu'>Telugu</option>                <option value='urdu'>Urdu</option>		<option value='English'>English</option>		<\/select><\/div><div id='gistFK_kbdClose'><img id='gistFK_CloseBtn' class='gistFK_Close_Btn' alt='Close' src=" + closeImageURL + "><\/div><\/div><div id='gistFK_kbdButtons'><div id='firstRowBTN'><input type='button' id='gistFK_b1' title='~' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b2' title='1' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b3' title='2' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b4' title='3' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b5' title='4' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b6' title='5' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b7' title='6' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b8' title='7' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b9' title='8' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b10' title='9' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b11' title='0' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b12' title='-' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b13' title='=' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_Bksp' title='Backspace' value='Bksp' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style='width: 43pt !important;'/><\/div><div id='firstRowBTN'><input type='button' id='gistFK_Tab' title='Tab' value='Tab' class='gist_flt_kbdBtnDisable commonButtonStyle themeBorder1' style='width: 43pt !important;' disabled = 'disabled'/><input type='button' id='gistFK_b14' title='Q' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b15' title='W' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b16' title='E' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b17' title='R' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b18' title='T' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b19' title='Y' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b20' title='U' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b21' title='I' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b22' title='O' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b23' title='P' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b24' title='[' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b25' title=']' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b26' title='\\' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><\/div><div id='firstRowBTN'><input type='button' id='gistFK_Lock' title='Caps Lock' value='Caps' class='gist_flt_kbdBtnDisable commonButtonStyle themeBorder1' style='width: 50pt !important;' disabled = 'disabled'/><input type='button' id='gistFK_b27' title='A' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b28' title='S' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b29' title='D' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b30' title='F' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b31' title='G' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b32' title='H' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b33' title='J' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b34' title='K' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b35' title='L' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b36' title=';' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b37' title=''' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_Enter' title='Enter' value='Enter' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style='width: 44pt !important;'/><\/div><div id='firstRowBTN'><input type='button' id='gistFK_btnShift1' title='Shift' value='Shift' class='commonButtonStyle themeBorder1 themeBackground1 gist_flt_kbd_shiftUp' style='width: 60pt !important;'/><input type='button' id='gistFK_b38' title='Z' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b39' title='X' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b40' title='C' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b41' title='V' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b42' title='B' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b43' title='N' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b44' title='M' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b45' title=',' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b46' title='.' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_b47' title='/' value='' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'/><input type='button' id='gistFK_btnShift2' title='Shift' value='Shift' class='commonButtonStyle themeBorder1 themeBackground1 gist_flt_kbd_shiftUp' style='width: 60pt !important;'/><\/div><\/div><div id='gistFK_BottomBar'><a href='http://cdac.in/' target='_blank' title='CDAC'><img id='gistFK_cdacLogo' alt='CDAC' src=" + companyImageURL + "><\/a><a href='http://www.cdac.in/index.aspx?id=gist' target='_blank' title='CDAC GIST'><img id='gistFK_gistLogo' alt='CDAC GIST' src=" + groupImageURL + "><\/a><div id='gistFK_spaceBar'><input type='button' id='gistFK_SpaceBar' title='Space' value=' ' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style='float:left; width:150pt !important;'/><\/div><div id='gistFK_altGr'><input type='button' id='gistFK_lchange' title='Change Layout' value='AltGr' class='commonButtonStyle themeBorder1 themeBackground1 gistFK_lchange_Up'/> <\/div><div id='gistFK_plugin_atRate' style='float: left; !important'><input type='button' id='gistFK_plugin_atRate' title='@' value='@' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1'> </div><input type='button' id='gistFK_plugin_atBharat' title='.भारत' value='.भारत' class='gist_flt_kbdBtn commonButtonStyle themeBorder1 themeBackground1' style='float: left; width:50pt !important' ><div id='gistFK_themes'><input type='button' title='Theme Blue' id='gistFK_theme1' value='' class='gistFK_SmallBox'/><input type='button' title='Theme Gray' id='gistFK_theme2' value='' class='gistFK_SmallBox'/><input type='button' title='Theme Green' id='gistFK_theme3' value='' class='gistFK_SmallBox'/><\/div><\/div><\/div>"

    } catch (n) { }
}
function setLanguageOnKeyboard(n) {
    // vainu : Note 
    // when language is to be changed all arrays are updated here
    // vainu : added
    // .bharat strings are hard coded
    var i, r, t;
    try {
        if (typeof n != "undefined" || $.trim(n).length != 0)
            if (i = $.inArray(n.toLowerCase(), languageSupport) == -1 ? !1 : !0,
                i) {
                switch (n.toLowerCase()) {
                    case "hindi":
                        mapArray = mapHindiArray;
                        mapExtArray = mapHindiExtArray;
                        mapShiftArray = mapHindiShiftArray;
                        mapShiftExtArray = mapHindiShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";

                        break;
                    case "urdu":
                        mapArray = mapUrduArray;
                        mapExtArray = mapUrduExtArray;
                        mapShiftArray = mapUrduShiftArray;
                        mapShiftExtArray = mapUrduShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".بھارت";
                        document.getElementById('gistFK_plugin_atBharat').title = ".بھارت";
                        break;
                    case "gujarati":
                        mapArray = mapGujaratiArray;
                        mapExtArray = mapGujaratiExtArray;
                        mapShiftArray = mapGujaratiShiftArray;
                        mapShiftExtArray = mapGujaratiShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ભારત";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ભારત";
                        break;
                    case "punjabi":
                        mapArray = mapPunjabiArray;
                        mapExtArray = mapPunjabiExtArray;
                        mapShiftArray = mapPunjabiShiftArray;
                        mapShiftExtArray = mapPunjabiShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ਭਾਰਤ";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ਭਾਰਤ";
                        break;
                    case "bengali":
                        mapArray = mapBengaliArray;
                        mapExtArray = mapBengaliExtArray;
                        mapShiftArray = mapBengaliShiftArray;
                        mapShiftExtArray = mapBengaliShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ভারত";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ভারত";
                        break;
                    case "marathi":
                        mapArray = mapMarathiArray;
                        mapExtArray = mapMarathiExtArray;
                        mapShiftArray = mapMarathiShiftArray;
                        mapShiftExtArray = mapMarathiShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "malayalam":
                        mapArray = mapMalayalamArray;
                        mapExtArray = mapMalayalamExtArray;
                        mapShiftArray = mapMalayalamShiftArray;
                        mapShiftExtArray = mapMalayalamShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ഭാരതം";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ഭാരതം";
                        break;
                    case "kannada":
                        mapArray = mapKannadaArray;
                        mapExtArray = mapKannadaExtArray;
                        mapShiftArray = mapKannadaShiftArray;
                        mapShiftExtArray = mapKannadaShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ಭಾರತ";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ಭಾರತ";
                        break;
                    case "assamese":
                        mapArray = mapAssameseArray;
                        mapExtArray = mapAssameseExtArray;
                        mapShiftArray = mapAssameseShiftArray;
                        mapShiftExtArray = mapAssameseShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ভাৰত";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ভাৰত";
                        break;
                    case "bodo":
                        mapArray = mapBodoArray;
                        mapExtArray = mapBodoExtArray;
                        mapShiftArray = mapBodoShiftArray;
                        mapShiftExtArray = mapBodoShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "dogri":
                        mapArray = mapDogriArray;
                        mapExtArray = mapDogriExtArray;
                        mapShiftArray = mapDogriShiftArray;
                        mapShiftExtArray = mapDogriShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "kashmiridev":
                        mapArray = mapKashmiriDevArray;
                        mapExtArray = mapKashmiriDevExtArray;
                        mapShiftArray = mapKashmiriDevShiftArray;
                        mapShiftExtArray = mapKashmiriDevShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "konkani":
                        mapArray = mapKonkaniArray;
                        mapExtArray = mapKonkaniExtArray;
                        mapShiftArray = mapKonkaniShiftArray;
                        mapShiftExtArray = mapKonkaniShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "maithili":
                        mapArray = mapMaithiliArray;
                        mapExtArray = mapMaithiliExtArray;
                        mapShiftArray = mapMaithiliShiftArray;
                        mapShiftExtArray = mapMaithiliShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "manipuri":
                        mapArray = mapManipuriArray;
                        mapExtArray = mapManipuriExtArray;
                        mapShiftArray = mapManipuriShiftArray;
                        mapShiftExtArray = mapManipuriShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ভারত";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ভারত";
                        break;
                    case "meeteimayek":
                        mapArray = mapMeeteiMayekArray;
                        mapExtArray = mapMeeteiMayekExtArray;
                        mapShiftArray = mapMeeteiMayekShiftArray;
                        mapShiftExtArray = mapMeeteiMayekShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "nepali":
                        mapArray = mapNepaliArray;
                        mapExtArray = mapNepaliExtArray;
                        mapShiftArray = mapNepaliShiftArray;
                        mapShiftExtArray = mapNepaliShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "olchiki":
                        mapArray = mapOlChikiArray;
                        mapExtArray = mapOlChikiExtArray;
                        mapShiftArray = mapOlChikiShiftArray;
                        mapShiftExtArray = mapOlChikiShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "oriya":
                        mapArray = mapOriyaArray;
                        mapExtArray = mapOriyaExtArray;
                        mapShiftArray = mapOriyaShiftArray;
                        mapShiftExtArray = mapOriyaShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ଭାରତ";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ଭାରତ";
                        break;
                    case "sanskrit":
                        mapArray = mapSanskritArray;
                        mapExtArray = mapSanskritExtArray;
                        mapShiftArray = mapSanskritShiftArray;
                        mapShiftExtArray = mapSanskritShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारतम्";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारतम्";
                        break;
                    case "santhali":
                        mapArray = mapSanthaliArray;
                        mapExtArray = mapSanthaliExtArray;
                        mapShiftArray = mapSanthaliShiftArray;
                        mapShiftExtArray = mapSanthaliShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारोत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारोत";
                        break;
                    case "sindhidev":
                        mapArray = mapSindhiDevArray;
                        mapExtArray = mapSindhiDevExtArray;
                        mapShiftArray = mapSindhiDevShiftArray;
                        mapShiftExtArray = mapSindhiDevShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".भारत";
                        document.getElementById('gistFK_plugin_atBharat').title = ".भारत";
                        break;
                    case "sindhipa":
                        mapArray = mapSindhiPaArray;
                        mapExtArray = mapSindhiPaExtArray;
                        mapShiftArray = mapSindhiPaShiftArray;
                        mapShiftExtArray = mapSindhiPaShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".ڀارت";
                        document.getElementById('gistFK_plugin_atBharat').title = ".ڀارت";
                        break;
                    case "tamil":
                        mapArray = mapTamilArray;
                        mapExtArray = mapTamilExtArray;
                        mapShiftArray = mapTamilShiftArray;
                        mapShiftExtArray = mapTamilShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".இந்தியா";
                        document.getElementById('gistFK_plugin_atBharat').title = ".இந்தியா";
                        break;
                    case "telugu":
                        mapArray = mapTeluguArray;
                        mapExtArray = mapTeluguExtArray;
                        mapShiftArray = mapTeluguShiftArray;
                        mapShiftExtArray = mapTeluguShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".భారత్";
                        document.getElementById('gistFK_plugin_atBharat').title = ".భారత్";
                        break;
                    // vainu added kashmiripa in combobox
                    case "kashmiripa":
                        mapArray = mapKashmiriPAArray;
                        mapExtArray = mapKashmiriPAExtArray;
                        mapShiftArray = mapKashmiriPAShiftArray;
                        mapShiftExtArray = mapKashmiriPAShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".بارت";
                        document.getElementById('gistFK_plugin_atBharat').title = ".بارت";

                        break;
                    // vainu added english in combobox
                    case "english":
                        mapArray = mapEnglishArray;
                        mapExtArray = mapEnglishExtArray;
                        mapShiftArray = mapEnglishShiftArray;
                        mapShiftExtArray = mapEnglishShiftExtArray;
                        document.getElementById('gistFK_plugin_atBharat').value = ".in";
                        document.getElementById('gistFK_plugin_atBharat').title = ".in";
                        break;
                }
                if ($(g_KeyboardContainer).length > 0) {
                    for (r = mapArray.length,
                        t = 0; t < r; t++)
                    // kai - updated for running in for loop and setting title
                    //kai : set title / tool tip also
                    //$("#gistFK_b" + (t + 1)).val(mapArray[t]);					 
                    {
                        $("#gistFK_b" + (t + 1)).val(mapArray[t]);
                        $("#gistFK_b" + (t + 1)).prop('title', (mapArray[t]));
                    }

                    $("#gistFK_btnShift1,#gistFK_btnShift2").hasClass("gist_flt_kbd_shiftDown") && ($("#gistFK_btnShift1,#gistFK_btnShift2").removeClass("gist_flt_kbd_shiftDown"),
                        $("#gistFK_btnShift1,#gistFK_btnShift2").addClass("gist_flt_kbd_shiftUp"),
                        isShiftPressed = !1);
                    $("#gistFK_lchange").hasClass("gistFK_lchange_Down") && ($("#gistFK_lchange").removeClass("gistFK_lchange_Down"),
                        $("#gistFK_lchange").addClass("gistFK_lchange_Up"),
                        lChecked = !1);
                    g_CurrentLanguage != n && (g_CurrentLanguage = n);
                    $("#gistFK_kbdButtons").css("font-family", "gist_" + n + "_font");
                    setFontOnInputBox(n)
                }
                $('#gistFK_selectLang option[value="' + n + '"]').attr("selected", "selected")
            } else
                alert("Sorry! There is no support for " + n + " language.")
    } catch (u) { }
}
function setFontOnInputBox(n) {
    try {
        $(g_ActiveObj).css("font-family", "gist_" + n + "_font")
    } catch (t) { }
}
function mapKey(n) {

    try {
        if (g_ActiveObj != null) {
            getkeyboardCaretPosition(g_ActiveObj);
            var t = n.value;
            if (n.id == "gistFK_SpaceBar") {
                insertValue(" ");
                return
            }
            switch (t) {
                case " ":
                    break;
                case "&nbsp;":
                    break;
                case "Bksp":
                    deleteValue();
                    break;
                default:
                    insertValue(t)
            }
        }
    } catch (i) { }
}
function insertValue(n) {

    var t, i, r;
    try {
        t = "";
        $(g_ActiveObj).focus();
        n != "" && (n == "" ? n = "‌" : n == "" && (n = "‍"),
            n == "Enter" && (n = g_BrowserName != "msie" || isBrowserAboveIE9() ? "\n" : "\r\n"),
            $(g_ActiveObj).attr("contenteditable") == "true" || $(g_ActiveObj).attr("contenteditable") == "plaintext-only" ? (document.selection ? i = document.createTextNode(n) : window.getSelection && (i = document.createTextNode(n)),
                insertNodeAtCursor(i, g_ActiveObj)) : (selectedTextStart != selectedTextEnd ? (r = $(g_ActiveObj).val(),
                    t = r.slice(0, selectedTextStart) + n + r.slice(selectedTextEnd),
                    selectedTextStart = selectedTextEnd = -1,
                    caretPos = caretPos + n.length) : (t = beforeText + n + afterText,
                        caretPos = caretPos + n.length),
                    $(g_ActiveObj).val(t),
                    setCursorPosition(g_ActiveObj, caretPos)))
    } catch (u) { }
}
function insertNodeAtCursor(n, t) {
    var r, u, f, i;
    try {
        window.getSelection ? (r = window.getSelection(),
            r.getRangeAt && r.rangeCount ? (i = r.getRangeAt(0),
                i.insertNode(n),
                i.collapse(!1),
                r.removeAllRanges(),
                r.addRange(i)) : (f = document.getElementById(t),
                    i = document.createRange(),
                    i.selectNodeContents(f),
                    i.insertNode(n),
                    i.setStartAfter(n),
                    i.collapse(!0),
                    r.removeAllRanges(),
                    r.addRange(i))) : document.selection && document.selection.createRange && (i = document.selection.createRange(),
                        u = n.nodeType == 3 ? n.data : n.outerHTML,
                        i.pasteHTML(u))
    } catch (e) { }
}
function deleteValue() {
    try {
        if ($(g_ActiveObj).attr("contenteditable") != "true") {
            var n = $(g_ActiveObj).val()
                , t = ""
                , i = "";
            selectedTextStart != selectedTextEnd ? (t = n.substr(0, selectedTextStart),
                i = n.slice(selectedTextEnd)) : (t = n.substr(0, caretPos - 1),
                    i = n.slice(caretPos),
                    caretPos = caretPos - 1);
            n = t + i;
            $(g_ActiveObj).val(n);
            setCursorPosition(g_ActiveObj, caretPos)
        }
    } catch (r) { }
}
function switchArray() {
    // vainu: note the text on button is updated at 2 places
    // this is one of the places
    // note that tooltip is also set so that it can be captured in accessibility tools
    var n;
    try {
        if (isKBDOpen)
            if (isShiftPressed || lChecked) {
                if (isShiftPressed && !lChecked)
                    for (n = 0; n < mapShiftArray.length; n++) {
                        document.getElementById("gistFK_b" + (n + 1)).value = mapShiftArray[n];
                        // kai - updated : set title / tool tip also
                        document.getElementById("gistFK_b" + (n + 1)).title = mapShiftArray[n];
                    }
                else if (isShiftPressed && lChecked)
                    for (n = 0; n < mapShiftExtArray.length; n++) {
                        document.getElementById("gistFK_b" + (n + 1)).value = mapShiftExtArray[n];
                        // kai - updated : set title / tool tip also
                        document.getElementById("gistFK_b" + (n + 1)).title = mapShiftExtArray[n];
                    }
                else if (!isShiftPressed && lChecked)
                    for (n = 0; n < mapExtArray.length; n++) {
                        document.getElementById("gistFK_b" + (n + 1)).value = mapExtArray[n];
                        // kai - updated : set title / tool tip also
                        document.getElementById("gistFK_b" + (n + 1)).title = mapExtArray[n];
                    }
            } else
                for (n = 0; n < mapArray.length; n++) {
                    document.getElementById("gistFK_b" + (n + 1)).value = mapArray[n];
                    // kai - updated : set title / tool tip also
                    document.getElementById("gistFK_b" + (n + 1)).title = mapArray[n];
                }
    } catch (t) { }
}
function checkID(n) {
    try {
        for (var t = 0; t < $.trim(g_ID_Array).length; t++)
            if (n == "#" + g_ID_Array[t])
                return !0;
        return !1
    } catch (i) { }
}
function getkeyboardCaretPosition(n) {
    try {
        var t = $(n).val() || $(n).text()
            , i = t.length;
        caretPos = keyboardCaretPosition(n);
        beforeText = t.substring(0, caretPos);
        afterText = t.substring(caretPos, i)
    } catch (r) { }
}
function keyboardCaretPosition(n) {
    var f, t, i, r, u, e, o;
    try {
        if (n.tagName == "DIV")
            return f = 0,
                window.getSelection && (t = window.getSelection().getRangeAt(0),
                    i = t.cloneRange(),
                    i.selectNodeContents(n),
                    i.setEnd(t.endContainer, t.beginOffset),
                    f = i.toString().length,
                    selectedTextStart = n.selectionStart,
                    selectedTextEnd = n.selectionEnd),
                f;
        if (n.selectionStart || n.selectionStart == "0")
            return selectedTextStart = n.selectionStart,
                selectedTextEnd = n.selectionEnd,
                n.selectionStart;
        if (n.createTextRange && !isBrowserAboveIE9()) {
            if (r = n.value.length,
                n.tagName == "TEXTAREA")
                return u = 0,
                    document.selection ? (n.focus(),
                        e = document.selection.createRange(),
                        e.moveStart("character", -n.value.length),
                        u = e.text.length) : (n.selectionStart || n.selectionStart == "0") && (u = n.selectionStart),
                    u;
            for (o = document.selection.createRange().duplicate(); o.parentElement() == n && o.move("character", 1) == 1;)
                --r;
            return r == n.value.length + 1 ? -1 : r
        }
    } catch (s) { }
}
function setCursorPosition(n, t) {
    try {
        if ($(n).get(0).setSelectionRange)
            $(n).get(0).setSelectionRange(t, t);
        else if ($(n).get(0).createTextRange) {
            var i = $(n).get(0).createTextRange();
            i.collapse(!0);
            i.moveEnd("character", t);
            i.moveStart("character", t);
            i.select()
        }
    } catch (r) { }
}
function getBrowserName() {
    try {
        var n = ""
            , t = navigator.userAgent.toLowerCase();
        return t.indexOf("opera") != -1 ? n = "opera" : t.indexOf("msie") != -1 ? n = "msie" : t.indexOf("safari") != -1 ? n = "safari" : t.indexOf("mozilla") != -1 && (n = t.indexOf("firefox") != -1 ? "firefox" : "mozilla"),
            n
    } catch (i) { }
}
function isBrowserAboveIE9() {
    try {
        var n = parseInt(navigator.appVersion);
        return n <= 4 ? !1 : !0
    } catch (t) { }
}
var g_EnableTypingOnlyOnKBDOpen = 1
    , curleft = 0
    , curtop = 0
    , cssFolderPath = jsFolderPath + "/css"
    , companyImageURL = jsFolderPath + "/img/keyboard/c-dacLogo.png"
    , groupImageURL = jsFolderPath + "/img/keyboard/gistlogo.png"
    , closeImageURL = jsFolderPath + "/img/keyboard/close.png";
typeof jQuery != "undefined" || window.jQuery ? typeof jQuery == "undefined" && window.jQuery ? jQuery = window.jQuery : typeof jQuery == "undefined" || window.jQuery || (window.jQuery = jQuery) : document.write("<script language='javascript' type='text/javascript' src='" + jsFolderPath + "/js/jquery.min.js'><\/script>");
typeof jQuery.ui == "undefined" && (document.write("<script language='javascript' type='text/javascript' src='" + jsFolderPath + "/js/jquery-ui.min.js'><\/script>"),
    document.write("<link rel='stylesheet' type='text/css' href='" + cssFolderPath + "/jquery-ui.min.css'/>"));
document.write("<link rel='stylesheet' type='text/css' href='" + cssFolderPath + "/cdac-gist-fonts.css' />");
document.write("<link rel='stylesheet' type='text/css' href='" + cssFolderPath + "/GistFloatingKeyboard.css' />");
document.write("<script language='javascript' type='text/javascript' src='" + jsFolderPath + "/js/LanguagesArray.js'><\/script>");
var g_ActiveObj = null
    , g_KeyboardContainer = null
    , g_CurrentLanguage = "hindi"
    , g_BrowserName = getBrowserName()
    , g_MarginFromWindow = 20
    , g_ID_Array = null
    , g_PreviousFontFamily = null
    , over = !1
    , isKBDOpen = !1
    , isShiftPressed = !1
    , lChecked = !1
    , selectedTextStart = -1
    , selectedTextEnd = -1
    , caretPos = 0
    , beforeText = ""
    , afterText = ""
    , mapArray = null
    , mapExtArray = null
    , mapShiftArray = null
    , mapShiftExtArray = null
    , whichClass = 0;

$(document).ready(function () {
    $(document).click(function () {
        try {
            var n = document.activeElement;
            n && (n.tagName == "INPUT" && (n.getAttribute("type") == "text" || n.getAttribute("type") == "email" || n.getAttribute("type") == "search") || n.tagName == "TEXTAREA" || n.tagName == "DIV" && (n.getAttribute("contenteditable") == "true" || n.getAttribute("contenteditable") == "plaintext-only") && n.getAttribute("readonly") != "readonly" && n.getAttribute("readonly") != !0) && (g_ActiveObj != n && executeAfterClick(n),
                $(g_ActiveObj).attr("contenteditable") == "true" || $(g_ActiveObj).attr("contenteditable") == "plaintext-only" ? ($("#gistFK_Bksp").attr("disabled", "disabled"),
                    $("#gistFK_Bksp").removeClass("gist_flt_kbdBtn"),
                    $("#gistFK_Bksp").addClass("gist_flt_kbdBtnDisable")) : ($("#gistFK_Bksp").removeAttr("disabled"),
                        $("#gistFK_Bksp").removeClass("gist_flt_kbdBtnDisable"),
                        $("#gistFK_Bksp").addClass("gist_flt_kbdBtn")))
        } catch (t) { }
    });
    $(document).on("mouseup", "#gistFK_kbdButtons,#gistFK_BottomBar", function () {
        try {
            g_ActiveObj != null && $(g_ActiveObj).focus()
        } catch (n) { }
    });
    $(document).on("click", ".gist_flt_kbdBtn", function () {
        try {
            mapKey(this)
        } catch (n) { }
    });
    $(document).on("keydown", g_ActiveObj, function (n) {
        var t, r, i;
        try {
            if (g_ActiveObj != null && (g_EnableTypingOnlyOnKBDOpen == 0 || g_EnableTypingOnlyOnKBDOpen == 1 && isKBDOpen)) {
                if (r = "",
                    window.event ? t = n.which : n.which && (t = parseInt(n.which)),
                    ($(g_ActiveObj).tagName != "DIV" || $(g_ActiveObj).attr("contenteditable") != "true") && getkeyboardCaretPosition(g_ActiveObj),
                    n.ctrlKey)
                    return;
                if (t == 27)
                    isKBDOpen = !1,
                        closeKeyboard();
                else if (t >= 186 && t <= 192 || t >= 219 && t <= 222 || t >= 48 && t <= 57 || t >= 65 && t <= 90 || t == 8)
                    if (g_EnableTypingOnlyOnKBDOpen != 0 || isKBDOpen || setLanguageOnKeyboard(g_CurrentLanguage),
                        t >= 186 && t <= 192 || t >= 219 && t <= 222) {
                        var u = ["186", "187", "188", "189", "190", "191", "192", "219", "220", "221", "222"]
                            , f = [";", "=", ",", "-", ".", "/", "`", "[", "\\", "]", "'"]
                            , e = [":", "+", "<", "_", ">", "?", "~", "{", "|", "}", '"'];
                        for (i = 0; i < u.length; i++)
                            if (t == u[i]) {
                                r = n.shiftKey ? e[i] : f[i];
                                break
                            }
                        keyDownOnInputBox(n, r)
                    } else
                        (t >= 48 && t <= 57 || t >= 65 && t <= 90) && (r = String.fromCharCode(t),
                            keyDownOnInputBox(n, r));
                else if (n.shiftKey || t == 16)
                    n.preventDefault(),
                        $("#gistFK_btnShift1,#gistFK_btnShift2").hasClass("gist_flt_kbd_shiftUp") && ($("#gistFK_btnShift1,#gistFK_btnShift2").removeClass("gist_flt_kbd_shiftUp"),
                            $("#gistFK_btnShift1,#gistFK_btnShift2").addClass("gist_flt_kbd_shiftDown")),
                        isShiftPressed = !0,
                        switchArray();
                else if (n.altKey || t == 18)
                    n.preventDefault(),
                        $("#gistFK_lchange").hasClass("gistFK_lchange_Up") && ($("#gistFK_lchange").removeClass("gistFK_lchange_Up"),
                            $("#gistFK_lchange").addClass("gistFK_lchange_Down")),
                        lChecked = !0,
                        switchArray();
                else
                    return
            }
        } catch (n) { }
    });
    $(document).on("keyup", g_ActiveObj, function (n) {
        var t, i;
        try {
            if (g_ActiveObj != null && (g_EnableTypingOnlyOnKBDOpen == 0 || g_EnableTypingOnlyOnKBDOpen == 1 && isKBDOpen)) {
                if (t = n.which,
                    n.ctrlKey)
                    return;
                if (t >= 186 && t <= 191 || t >= 219 && t <= 222 || t >= 48 && t <= 57 || t >= 65 && t <= 90 || t == 8)
                    i = $(".gist_flt_kbdBtn"),
                        $(i).each(function () {
                            whichClass != 0 && (whichClass == 1 ? $(this).addClass("themeBackground1") : whichClass == 2 ? $(this).addClass("themeBackground2") : whichClass == 3 && $(this).addClass("themeBackground3"))
                        });
                else if (n.shiftKey || t == 16)
                    n.preventDefault(),
                        $("#gistFK_btnShift1,#gistFK_btnShift2").hasClass("gist_flt_kbd_shiftDown") && ($("#gistFK_btnShift1,#gistFK_btnShift2").removeClass("gist_flt_kbd_shiftDown"),
                            $("#gistFK_btnShift1,#gistFK_btnShift2").addClass("gist_flt_kbd_shiftUp")),
                        isShiftPressed = !1,
                        switchArray();
                else if (n.altKey || t == 18)
                    n.preventDefault(),
                        $("#gistFK_lchange").hasClass("gistFK_lchange_Down") && ($("#gistFK_lchange").removeClass("gistFK_lchange_Down"),
                            $("#gistFK_lchange").addClass("gistFK_lchange_Up")),
                        lChecked = !1,
                        switchArray();
                else
                    return
            }
        } catch (n) { }
    });
    $(document).on("click", "#disableIndianLangTyping", function () {
        $("#disableIndianLangTyping").is(":checked") ? (g_EnableTypingOnlyOnKBDOpen = 1,
            isKBDOpen && closeKeyboard()) : g_EnableTypingOnlyOnKBDOpen = 0
    });
    $(document).on("click", "#gistFK_btnShift1,#gistFK_btnShift2", function () {
        try {
            $(this).hasClass("gist_flt_kbd_shiftUp") ? ($("#gistFK_btnShift1,#gistFK_btnShift2").removeClass("gist_flt_kbd_shiftUp"),
                $("#gistFK_btnShift1,#gistFK_btnShift2").addClass("gist_flt_kbd_shiftDown"),
                isShiftPressed = !0) : $(this).hasClass("gist_flt_kbd_shiftDown") && ($("#gistFK_btnShift1,#gistFK_btnShift2").removeClass("gist_flt_kbd_shiftDown"),
                    $("#gistFK_btnShift1,#gistFK_btnShift2").addClass("gist_flt_kbd_shiftUp"),
                    isShiftPressed = !1);
            switchArray()
        } catch (n) { }
    });
    $(document).on("click", "#gistFK_lchange", function () {
        try {
            $("#gistFK_lchange").hasClass("gistFK_lchange_Up") ? ($("#gistFK_lchange").removeClass("gistFK_lchange_Up"),
                $("#gistFK_lchange").addClass("gistFK_lchange_Down"),
                lChecked = !0) : $("#gistFK_lchange").hasClass("gistFK_lchange_Down") && ($("#gistFK_lchange").removeClass("gistFK_lchange_Down"),
                    $("#gistFK_lchange").addClass("gistFK_lchange_Up"),
                    lChecked = !1);
            switchArray()
        } catch (n) { }
    });
    $(document).on("change", "#gistFK_selectLang", function () {
        var n = $("#gistFK_selectLang").val().trim().toLowerCase();
        changeKeyboardLanguage(n)

        if (n == 'urdu' || n == 'sindhipa' || n == 'kashmiripa') {
            document.getElementById("BigBox").style.direction = "rtl";
        }
        else {
            document.getElementById("BigBox").style.direction = "ltr";
        }
    });
    $(document).on("click", "#gistFK_theme1", function () {
        try {
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").hasClass("themeBorder2") ? ($(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").removeClass("themeBorder2"),
                $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").removeClass("themeBackground2"),
                $("#gistFK_wdrag").removeClass("gist_flt_wdrag_Theme2"),
                $(g_KeyboardContainer).removeClass("backgroundClrTheme2")) : ($(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").removeClass("themeBorder3"),
                    $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").removeClass("themeBackground3"),
                    $("#gistFK_wdrag").removeClass("gist_flt_wdrag_Theme3"),
                    $(g_KeyboardContainer).removeClass("backgroundClrTheme3"));
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").addClass("themeBorder1");
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").addClass("themeBackground1");
            $("#gistFK_wdrag").addClass("gist_flt_wdrag_Theme1");
            $(g_KeyboardContainer).addClass("backgroundClrTheme1")
        } catch (n) { }
    });
    $(document).on("click", "#gistFK_theme2", function () {
        try {
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").hasClass("themeBorder1") ? ($(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").removeClass("themeBorder1"),
                $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").removeClass("themeBackground1"),
                $("#gistFK_wdrag").removeClass("gist_flt_wdrag_Theme1"),
                $(g_KeyboardContainer).removeClass("backgroundClrTheme1")) : ($(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").removeClass("themeBorder3"),
                    $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").removeClass("themeBackground3"),
                    $("#gistFK_wdrag").removeClass("gist_flt_wdrag_Theme3"),
                    $(g_KeyboardContainer).removeClass("backgroundClrTheme3"));
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").addClass("themeBorder2");
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").addClass("themeBackground2");
            $("#gistFK_wdrag").addClass("gist_flt_wdrag_Theme2");
            $(g_KeyboardContainer).addClass("backgroundClrTheme2")
        } catch (n) { }
    });
    $(document).on("click", "#gistFK_theme3", function () {
        try {
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").hasClass("themeBorder1") ? ($(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").removeClass("themeBorder1"),
                $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").removeClass("themeBackground1"),
                $("#gistFK_wdrag").removeClass("gist_flt_wdrag_Theme1"),
                $(g_KeyboardContainer).removeClass("backgroundClrTheme1")) : ($(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").removeClass("themeBorder2"),
                    $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").removeClass("themeBackground2"),
                    $("#gistFK_wdrag").removeClass("gist_flt_wdrag_Theme2"),
                    $(g_KeyboardContainer).removeClass("backgroundClrTheme2"));
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_Tab,#gistFK_Lock,#gistFK_Enter").addClass("themeBorder3");
            $(".gist_flt_kbdBtn,#gistFK_btnShift1,#gistFK_btnShift2,#gistFK_lchange,#gistFK_wdrag").addClass("themeBackground3");
            $("#gistFK_wdrag").addClass("gist_flt_wdrag_Theme3");
            $(g_KeyboardContainer).addClass("backgroundClrTheme3")
        } catch (n) { }
    });
    $(document).on("click", "#gistFK_CloseBtn", function () {
        try {
            isKBDOpen = !1;
            closeKeyboard();
        } catch (n) { }
    })
});