
function initialLoad(){
    localStorage.num1 = 0
    localStorage.num2 = 0
    localStorage.num3 = 0
    localStorage.num4 = 0
}

function loadValues(){
    
    var _num1 = localStorage.num1
    var _num2 = localStorage.num2
    var _num3 = localStorage.num3
    var _num4 = localStorage.num4
    
    var top = document.getElementsByClassName('cart-items')[0]
        if((_num1)>=1){
            cartRow = document.createElement('tr')
            cartRow.classList.add('cart-row')
            var tableContents =`
                
                <td class='product-title'>T-800</td>
                <td><input class="cart-quant" type="number"value="${_num1}"></td>
                <td class='cart-price'>$2000</td>
                <td><button class="cart-btn" type="button">Remove</button></td>
                
            `
            cartRow.innerHTML =tableContents
            top.append(cartRow)
            cartRow.getElementsByClassName('cart-btn')[0].addEventListener('click',removeCartItem)
            cartRow.getElementsByClassName('cart-quant')[0].addEventListener('change',quantChanged)
        }
        if((_num2)>=1){
            cartRow = document.createElement('tr')
            cartRow.classList.add('cart-row')
            var tableContents =`
                
                <td class='product-title'>T-X</td>
                <td><input class="cart-quant" type="number"value="${_num2}"></td>
                <td class='cart-price'>$2099</td>
                <td><button class="cart-btn" type="button">Remove</button></td>
                
            `
            cartRow.innerHTML =tableContents
            top.append(cartRow)
            cartRow.getElementsByClassName('cart-btn')[0].addEventListener('click',removeCartItem)
            cartRow.getElementsByClassName('cart-quant')[0].addEventListener('change',quantChanged)
        }
        if((_num3)>=1){
            cartRow = document.createElement('tr')
            cartRow.classList.add('cart-row')
            var tableContents =`
                
                <td class='product-title'>T-1</td>
                <td><input class="cart-quant" type="number"value="${_num3}"></td>
                <td class='cart-price'>$2</td>
                <td><button class="cart-btn" type="button">Remove</button></td>
                
            `
            cartRow.innerHTML =tableContents
            top.append(cartRow)
            cartRow.getElementsByClassName('cart-btn')[0].addEventListener('click',removeCartItem)
            cartRow.getElementsByClassName('cart-quant')[0].addEventListener('change',quantChanged)
        }
        if((_num4)>=1){
            cartRow = document.createElement('tr')
            cartRow.classList.add('cart-row')
            var tableContents =`
                
                <td class='product-title'>T-1000</td>
                <td><input class="cart-quant" type="number"value="${_num4}"></td>
                <td class='cart-price'>$80</td>
                <td><button class="cart-btn" type="button">Remove</button></td>
                
            `
            cartRow.innerHTML =tableContents
            top.append(cartRow)
            cartRow.getElementsByClassName('cart-btn')[0].addEventListener('click',removeCartItem)
            cartRow.getElementsByClassName('cart-quant')[0].addEventListener('change',quantChanged)
        }

        updateCartTotal(1)
    //add listener to update total //document.getElementById("n1").value = localStorage.num1
} 

function quantChanged(event){
    var input = event.target
    if(isNaN(input.value)|| input.value <= 0){
        input.value = 1
    }
    //write to change value
    updateCartTotal(1)
}

function removeCartItem(event){
    //write to change value 2 zero 
    var name = event.target.parentElement.parentElement.getElementsByClassName('product-title')[0].innerText
    if(name == 'T-800'){
        localStorage.num1 = -1
    }else if(name == 'T-X'){
        localStorage.num2 = -1
    }else if(name == 'T-1'){
        localStorage.num3 = -1
    }else{
        localStorage.num4 = -1
    }
    console.log(localStorage.num1)
    event.target.parentElement.parentElement.remove()
    updateCartTotal(-1)
}

function updateCartTotal(bool){
    var cartContainer = document.getElementsByClassName('cart-items')[0]
    var cartItems = cartContainer.getElementsByClassName('cart-row')
    var total = 0
    for(var i = 0; i < cartItems.length;i++){
        var cartItem = cartItems[i]
        var priceElement = cartItem.getElementsByClassName('cart-price')[0]
        var quantofElem = cartItem.getElementsByClassName('cart-quant')[0]
        var price = parseFloat(priceElement.innerText.replace('$',''))
        var quant = quantofElem.value
        if(bool == 1){
            //sets num vals
        if(price==2000){
            localStorage.num1 = quant
        } else if(price == 2099){
            localStorage.num2 = quant
        } else if(price == 2){
            localStorage.num3 = quant
        } else{
            localStorage.num4 = quant
        }
        }
        total = total + (price*quant)
    }
    total = Math.round(total * 100)/100
    localStorage.total = total
    console.log(localStorage.total)
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
}



