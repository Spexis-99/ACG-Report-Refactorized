if(localStorage.getItem('BC_Name')== null){
    localStorage.setItem('BC_Name','[]')
}
if(localStorage.getItem('BC_Link')== null){
    localStorage.setItem('BC_Link','[]')
}



window.onload = function(){
    function AddOrPopTo(NameEntry, LinkEntry){
        let storedNames = JSON.parse(localStorage.getItem('BC_Name'));
        let storedLinks = JSON.parse(localStorage.getItem('BC_Link'));
        console.log(storedNames);
        let i=n= storedNames.length;
        let found=0;
        for (; i >0; ) {
            if(storedNames[--i]==NameEntry){
                for (let j = n-1; j >i ; j--) {
                    storedLinks.pop();
                    storedNames.pop();
                    
                }
                found=1;
                /*if(NameEntry=="SPGA-Landing page"){
                    storedLinks[i]=="index.html";
                    console.log(storedLinks);
                }*/
                
                localStorage.setItem("BC_Name",JSON.stringify(storedNames));
                localStorage.setItem("BC_Link",JSON.stringify(storedLinks));
                break;
            }
           
            
        }
    
        if(found==0){
            storedNames.push(NameEntry);
            storedLinks.push(LinkEntry);
            //storedLinks[0]="index.html"
            localStorage.setItem("BC_Name",JSON.stringify(storedNames));
            localStorage.setItem("BC_Link",JSON.stringify(storedLinks));
        }
    
    };
    
    
    
    let list = document.getElementById("myList");
    let p = JSON.parse(localStorage.getItem('BC_Name')).length-1;
    
    function UpdateBC(){
        
        AddOrPopTo(document.getElementById("RelatedAnchor").innerHTML,document.getElementById("RelatedAnchor").href)
        
        let storedNames = JSON.parse(localStorage.getItem('BC_Name'));
        let storedLinks = JSON.parse(localStorage.getItem('BC_Link'));
        storedNames.forEach((item,index) => {
            let li = document.createElement("li");
            li.className = 'breadcrumbs__items';
            //if (index ==0) {

                //li.innerHTML = "<a href='../../index.html' target='_top' class='breadcrumbs__link'>"+storedNames[index] + "</a>";
                //li.innerHTML = "<a href='"+document.getElementById("RelatedAnchor1").href+"' class='breadcrumbs__link'>"+storedNames[index] + "</a>";

          //  } else
             //if( index != p ){
                
            
            
            li.innerHTML = "<a href='"+storedLinks[index]+"' class='breadcrumbs__link'>"+storedNames[index] + "</a>";//}
           // else{
               //li.innerHTML = "<a href='"+storedLinks[index]+"' class='breadcrumbs__link--active'>"+storedNames[index] + "</a>";
            //}
            list.appendChild(li);
           });
    }; 
    
    UpdateBC();
    ////console.log(BC_Name);
    ////console.log(BC_Link);
}
