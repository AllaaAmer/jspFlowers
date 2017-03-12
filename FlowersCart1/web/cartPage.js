/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function calcProductPrice(id,quantity)
{
    if(parseInt( quantity.value)<=parseInt( quantity.max))
    {
   document.getElementById("ProducttotalPrice"+id).innerHTML=parseInt( document.getElementById("price"+id).innerHTML)*quantity.value;
    calctotalprice();
    }
    
}
function calctotalprice()
{
       var total=0;
       products=document.getElementsByName("ProducttotalPrice");
        for(i=0;i<products.length;i++)
        {
            asd=products[i].childNodes[0].data;
            total+=parseInt(products[i].childNodes[0].data);
        }
        document.getElementById("totalPrice").innerHTML=total;
    
}