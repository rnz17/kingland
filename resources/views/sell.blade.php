@include('partials.head')

    @include('partials.nav')

    <main class="flex h-[92vh] w-full mx-auto h-auto pb-32">

        <!-- Filters -->
            <form action="{{ route('sell') }}" method="GET" class="flex w-1/4 h-screen px-4">
                <div class="block w-full m-auto mt-[9vh] text-center rounded-lg border border-lightgray overflow-hidden py-2">
                        <div class="px-2">
                            <input type="text" name="search" placeholder="Search..." class="w-full p-2 border rounded-md shadow-xl">
                        </div>
        
                    <!-- Categories -->
                    <h1 href="{{ url('/sell') }}" class="font-[500] text-xl py-4">Categories</h1>
        
                    @foreach($filters as $filter)
                    <div class="flex text-left items-center">
                        <input type="checkbox" id="{{ $filter->id }}" class="peer w-5 h-5 hidden border rounded-md" name="category[]" value="{{ $filter->id }}">
                        <label for="{{ $filter->id }}" class="w-full border-y border-gray active:bg-lightblue peer-checked:bg-blue peer-checked:text-white text-md font-medium px-2 py-1">{{ $filter->name }}</label>
                    </div>
                    @endforeach
                    
                    <button type="submit" class="p-2 mt-6 text-md bg-lightblue border border-darkblue border-opacity-20 mb-2 text-black rounded-md shadow-xl">Apply Filters</button>
                </div>

            </form>

        <!-- Product Display -->
            <div class="flex flex-wrap justify-center gap-[2vw] w-5/6 p-4">
                @if (count($products) > 0)
                    @foreach($products as $product)
                        <button id="{{ $product->code }}" class="openModalBtn cursor-pointer relative group text-center p-4 w-[15vw] h-[35vh] border border-black rounded-md hover:shadow-lg hover:transform hover:scale-[1.05] duration-300">
                            <div class="w-full duration-300 overflow-hidden">
                                <img class="block mx-auto w-1/2 mb-6" src="{{ asset('images/products/placeholder.png') }}" alt="Item image">
                                <h1 class="text-lg font-medium mt-16">{{$product->name}}</h1>
                            </div>
                        </button>
                    @endforeach
                @else
                    <h1 class="text-center mt-32">No items found</h1>
                @endif

                
            </div>
            
            <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center p-4">
                <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 transform -translate-x-1/2 -translate-y-1/2 w-1/2 h-auto bg-white shadow-2xl p-8 rounded">
                    <div id="modCont">

                    </div>
                    <div class="flex w-full">

                        <button onclick="sendEmail('item')" class="mt-4 mx-auto px-2 min-w-24 py-2 bg-darkblue text-white rounded-md shadow-lg border border-gray border-opacity-20 hover:scale-105 duration-300">Inquire</button>
                        <button onclick="addToBasket()" class="closeModalBtn mt-4 mx-auto px-2 min-w-24 py-2 bg-green-400 text-black rounded-md shadow-lg border border-gray border-opacity-20 hover:scale-105 duration-300">Add to Basket</button>
                        <button class="closeModalBtn mt-4 mx-auto px-2 min-w-24 py-2 bg-red-500 text-white rounded-md shadow-lg border border-gray border-opacity-20 hover:scale-105 duration-300">Close</button>
                    </div>
                </div>
            </div>  

    </main>

@include('partials.footer')

</body>
<script>
    const modal = document.getElementById('modal');
    const openModalBtns = document.querySelectorAll('.openModalBtn');
    const closeModalBtn = document.querySelectorAll('.closeModalBtn');
    const nav = document.getElementById('nav');
    const cont = document.getElementById('modCont');
    var item;
    var basket = [];
    var itemCodes = [];
    const basketCont = document.getElementById('basketCont');
    // MODAL SCRIPT
    
        // Get modal and buttons
        // Open modal when any button with the 'openModalBtn' class is clicked
        openModalBtns.forEach(btn => {
        btn.addEventListener('click', () => {
            const products = @json($products);
            var code = btn.id;
            for (let product of products){
                if (product.code == code){
                    item = product;
                    break
                }
            }

            var content = `<img src="{{ asset('images/products/placeholder.png') }}" class="w-40 my-4 shadow-md mx-auto">
                    <div class="items-center">
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item:</h1>
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-center">${item.name}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item Code:</h1>
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-center">${item.code}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">Item Category:</h1>
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-center">${item.category}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-left pl-20">pcs_unit:</h1>
                            <h1 class="text-xl font-medium mx-auto w-1/2 text-center">${item.pcs_unit}<h1>
                        </div>

                    </div>`;

            
            cont.innerHTML = content;

            modal.classList.remove('hidden');
            nav.classList.add('hidden');

            const productId = btn.id;
        });
        });

        closeModalBtn.forEach(btn => {
        btn.addEventListener('click', () => {
            modal.classList.add('hidden');
            nav.classList.remove('hidden');
        });
        });

        // Optional: Close modal if clicked outside the modal content
        modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            modal.classList.add('hidden');
            nav.classList.remove('hidden');
        }
        });

    // email
        function sendEmail(type) {
            var recipient = "renzogregorio0517@gmail.com";
            console.log(type);
            if(type === 'item'){
                
                var subject = `Product Inquiry: ${item.name}`;
                var body = `Item Code: ${item.code}\nItem Name: ${item.name}\nItem Quantity:{Please add Order Quantity}`;
    
                var mailtoLink = 'https://mail.google.com/mail/?view=cm&fs=1&to=' + encodeURIComponent(recipient) + 
                                    '&su=' + encodeURIComponent(subject) + 
                                    '&body=' + encodeURIComponent(body);
    
    
                alert("Please include other information in the email\nlike product quantity and other details.");
                window.open(mailtoLink, '_blank');
            }else{
                if(basket.length >= 2){
                    
                    var subject = `Product Inquiry: ${item.name}`;
                    var body = `List of items:\n`;

                    var i = 1;
                    for (item of basket){
                        body += `   Item ${i}:\n      Item Code: ${item.code}\n     Item Name: ${item.name}\n  Item Quantity:{Please add Order Quantity}\n\n`;
                        i++;
                    }
        
                    var mailtoLink = 'https://mail.google.com/mail/?view=cm&fs=1&to=' + encodeURIComponent(recipient) + 
                                        '&su=' + encodeURIComponent(subject) + 
                                        '&body=' + encodeURIComponent(body);
        
        
                    alert("Please include other information in the email\nlike product quantity and other details.");
                    window.open(mailtoLink, '_blank');
                }else{
                    
                    var subject = `Product Inquiry: ${item.name}`;
                    var body = `Item Code: ${item.code}\nItem Name: ${item.name}\nItem Quantity:{Please add Order Quantity}`;
        
                    var mailtoLink = 'https://mail.google.com/mail/?view=cm&fs=1&to=' + encodeURIComponent(recipient) + 
                                        '&su=' + encodeURIComponent(subject) + 
                                        '&body=' + encodeURIComponent(body);
        
        
                    alert("Please include other information in the email\nlike product quantity and other details.");
                    window.open(mailtoLink, '_blank');
                }
            }
        }

    // basket

        function addToBasket(){

            var content = `<div id="b ${item.code}" class="flex border py-4 text-left border-gray border-opacity-50">
            <h1 class="m-auto ml-4">${item.name}</h1>
            <button onclick="deleteFromBasket('b ${item.code}')" class="m-auto px-2 bg-red-500 text-white border-black shadow-xl rounded-lg mr-4">Remove</button>
            </div>`;
            
            if (itemCodes.includes(item.code)){
                console.log(`Item: ${item.code} is already in basket`);
            }else{
                basketCont.innerHTML += content;
                itemCodes.push(item.code);
                basket.push(item);
            }


        }

        function deleteFromBasket(toDel){
            const el = document.getElementById(toDel);
            if (el) {
                el.remove();
                const index = itemCodes.indexOf(toDel.split(' ')[1]);
                if (index > -1) {
                    itemCodes.splice(index, 1);
                    basket.splice(index, 1);
                }
            }
        }

</script>