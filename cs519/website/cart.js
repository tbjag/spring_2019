if(document.readyState == 'loading'){
    document.addEventListener('DOMContentLoaded',ready)
} else{
    ready()
}

function ready(){
    var rmvfromcartbtn = document.getElementsByClassName('cart-btn')
    for(var i = 0; i < rmvfromcartbtn.length;i++){
    var button = rmvfromcartbtn[i]
    button.addEventListener('click', removeCartItem)
    }

    var quantInputs = document.getElementsByClassName('cart-quant')
    for(var i = 0; i < quantInputs.length;i++){
        var input = quantInputs[i]
        input.addEventListener('change', quantChanged)
    }

    var addToCartBtn = document.getElementsByClassName('shop-item-btn')
    for(var i = 0; i < addToCartBtn.length;i++){
        var button = addToCartBtn[i]
        button.addEventListener('click',addCartClicked)
    }

    document.getElementsByClassName('purchase-btn')[0].addEventListener('click',purchaseClicked)

}

function removeCartItem(event){
    event.target.parentElement.parentElement.remove()
    updateCartTotal()
}

function quantChanged(event){
    var input = event.target
    if(isNaN(input.value)|| input.value <= 0){
        input.value = 1
    }
    updateCartTotal()
}

function addCartClicked(event){
    var button = event.target
    var shopItem = button.parentElement.parentElement
    var title = shopItem.getElementsByClassName('shop-item-title')[0].innerText
    var price = shopItem.getElementsByClassName('shop-item-price')[0].innerText
    var imgSrc = shopItem.getElementsByClassName('shop-item-image')[0].src
    //window.location.href =  "cart.html";
    addItemtoCart(title,price,imgSrc)
}

function addItemtoCart(title,price,imgSrc){
    var cartRow = document.createElement('div')
    cartRow.classList.add('cart-row')
    var cartItems = document.getElementsByClassName('cart-items')[0]
    var cartItemNames = cartItems.getElementsByClassName('cart-item-title')
    for(var i = 0; i < cartItemNames.length;i++){
        if(cartItemNames[i].innerText == title){
            alert('Item already in bag')
            return 
        }
    }
    var cartRowContents =`
    <div class="name">
                            <span class="cart-item-title">${title}</span>
                        </div>
                        <div>
                            <span class="cart-price">${price}</span>
                        </div>
                        <div class="cart-quantity">
                            <input class="cart-quant" type="number" value="1">
                            <button class="cart-btn" type="button">Remove</button>
                        </div>
                        <hr>
                    `
    cartRow.innerHTML = cartRowContents
    cartItems.append(cartRow)
    cartRow.getElementsByClassName('cart-btn')[0].addEventListener('click',removeCartItem)
    cartRow.getElementsByClassName('cart-quant')[0].addEventListener('change',quantChanged)
    updateCartTotal()
}

function purchaseClicked(){
    window.location.href =  "confirmation.html";
}

function updateCartTotal(){
    var cartContainer = document.getElementsByClassName('cart-items')[0]
    var cartItems = cartContainer.getElementsByClassName('cart-row')
    var total = 0
    for(var i = 0; i < cartItems.length;i++){
        var cartItem = cartItems[i]
        var priceElement = cartItem.getElementsByClassName('cart-price')[0]
        var quantofElem = cartItem.getElementsByClassName('cart-quant')[0]
        var price = parseFloat(priceElement.innerText)
        var quant = quantofElem.value
        total = total + (price*quant)
    }
    total = Math.round(total * 100)/100
    document.getElementsByClassName('cart-total-price')[0].innerText = '$' + total
}