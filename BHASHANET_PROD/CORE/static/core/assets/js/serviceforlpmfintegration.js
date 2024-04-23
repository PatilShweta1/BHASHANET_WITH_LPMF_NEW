
if(document.getElementById(window.location.pathname.substring(1).toLowerCase()) != null)
document.getElementById(window.location.pathname.substring(1).toLowerCase()).classList.add("active")
else if(window.location.pathname.substring(1) == 'documentPage' || window.location.pathname.substring(1) == 'bestpractices'){
    document.getElementById('resource').classList.add("active")
}else if(window.location.pathname.substring(1) == 'uaindiaprogramme' || window.location.pathname.substring(1) == 'IDNCCTLD'){
    document.getElementById('about').classList.add("active")
}   
        
        
        function renderPathFunction(path){
            console.log("Hello",path)
            let language='English'
            let domain="http://bhashanet.in:8001"
            let idnint=''
            if (path == 'idn_websites'){
                idnint='/1'
            }else{
                idnint=''
            }
            $.getJSON("/static/domain.json", function (domaindata) {
                for (let i = 0; i < domaindata.length; i++) {
                Object.entries(domaindata[i]).forEach(([key, value]) => {
                    if (value == location.origin){
                        language=key;
                        domain=domaindata[i][key]
                        $.getJSON("/static/paths.json", function (pathdata) {
                            for (let i = 0; i < pathdata.length; i++) {
                            Object.entries(pathdata[i]).forEach(([key, value]) => {
                                if (value =='/'+decodeURI(path)){
                                    if (language == 'English') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Hindi') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Marathi') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Kannada') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Malayalam') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Bengali') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Manipuri') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Gujarati') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Urdu') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Punjabi') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Tamil') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Telugu') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Assamese') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Konkani') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else {
                                 
                                        }    
                                }else {
                                    
                                }})
                            }})
                    }else{
                         
                    }})}})}




        function renderDomainFunction(language){
            let return_path=""
            let domain=""
            let requested_path=location.pathname.split('/')[1]
            console.log("pathhh",language,location.pathname.split('/')[2])
            let id=location.pathname.split('/')[2]
            let idn=''
            if (typeof id === 'undefined'){
                idn=''
            }else{
                idn='/'+id
            }
            let english_path=''
            $.getJSON("/static/paths.json", function (pathdata) {
                for (let i = 0; i < pathdata.length; i++) {
                Object.entries(pathdata[i]).forEach(([key, value]) => {
                    if (value =='/'+decodeURI(requested_path)){
                        english_path=pathdata[i]['English']
                        if (english_path=='/idn_websites'){
                            idn='/1'
                        }
                        return_path=pathdata[i][language]
                    }})}})
            // console.log("/static/paths.json",english_path,return_path)
            $.getJSON("/static/domain.json", function (domaindata) {
            for (let i = 0; i < domaindata.length; i++) {
            // console.log("/static/paths.json",domaindata[i])
            Object.entries(domaindata[i]).forEach(([key, value]) => {
                if (key == language){
                    domain=domaindata[i][language]
                    console.log("path to be return",domaindata[i][language]+return_path+idn)
                    console.log(domain+return_path+idn)
                    window.location.assign(domain+return_path+idn);
                   
                }})}})
            

               
        }
        


        function renderPathForBlogCategoryFunction(path,id){
            console.log(path,id)
            let language='English'
            let domain="http://bhashanet.in:8001"
            let idnint='/'+id
            console.log(idnint)
            $.getJSON("/static/domain.json", function (domaindata) {
                for (let i = 0; i < domaindata.length; i++) {
                Object.entries(domaindata[i]).forEach(([key, value]) => {
                    if (value == location.origin){
                        language=key;
                        domain=domaindata[i][key]
                        $.getJSON("/static/paths.json", function (pathdata) {
                            for (let i = 0; i < pathdata.length; i++) {
                            Object.entries(pathdata[i]).forEach(([key, value]) => {
                                if (value =='/'+decodeURI(path)){
                                    if (language == 'English') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Hindi') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Marathi') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Kannada') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Malayalam') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Bengali') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Manipuri') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Gujarati') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Urdu') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);  
                                    }else if (language == 'Punjabi') {
                                        window.location.assign(domain+pathdata[i][language]+idnint); 
                                    }else if (language == 'Tamil') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Telugu') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Assamese') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else if (language == 'Konkani') {
                                        window.location.assign(domain+pathdata[i][language]+idnint);
                                    }else {
                                 
                                        }    
                                }else {
                                    
                                }})
                            }})
                    }else{
                         
                    }})}})
                }
        