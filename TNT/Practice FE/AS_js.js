

var products=["mobilephone","laptop","keychain","dolls","charger"]
 products.map((product)=>{
 
    console.log(product)
 
 })
 var productDescription=[
 
{
    pid:"P101",
    pName:"Samsung F5",
    price:13000
},
{
    pid:"P102",
    pName:"Samsung F9",
    price:26000
},
{
    pid:"P103",
    pName:"OPPO F5",
    price:12000
}
 
 ]
 
  productDescription.map((product,index)=>{
    console.log(" Description of Product No:"+(index+1))
    console.log(product.pid);
    console.log(product.pName);
    console.log(product.price);
 
 })
 

 var sub= function(a , b)
 {
     return a-b
}
 
var result = sub(7,3);
console.log(result)

var oddEven=(a)=>
{
     return a%2==0 ? 'even':'odd'

}
console.log(oddEven(8))

function greet(name,callback)
{
    console.log("Prepariing to greet...!")
}
setTimeout(function(){
    callback(message)
  },2000)

  const dest=[1,2,3,4,5]
const [z,y,...rest ]=dest
console.log(rest)

  const brr = [2,3,4,5]
const mappedArr = brr.map((el)=>
{
    return el*2
})
console.log(mappedArr)

const brr1 = [1,2,3,4,5]
const filtered = brr.filter((el)=>
{
    return el%2 == 1
})
console.log(filtered)


const arr4 = [1,2,3]
const arr5 = arr4
console.log(arr4)
console.log(arr5)
console.log(arr4 === arr5)

const arr0 =[1,2,3]
const arr9 = [4,5,6]
const arr8 = [...arr0,11,12,...arr9]
console.log(arr8)

var arr = [5, 6, 2, 3, 8, 1];
arr.sort(function (a, b) {
    return a - b;
});

console.log(arr);


arr.sort()
console.log(arr);
arr.reverse()
console.log(arr);
