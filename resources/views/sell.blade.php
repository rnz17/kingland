@include('partials.head')

    @include('partials.nav')

    <main class="flex h-[92vh] w-full mx-auto h-auto pb-32">

        <!-- Filters -->
            <div class="w-full md:w-1/4 p-4">
                <form id="filters" action="{{ route('sell') }}" method="GET">
                    <div class="mb-4">
                        <label for="search" class="block text-lg font-medium text-gray-700">Search</label>
                        <input type="text" id="search" name="search" class="mt-1 block w-full p-2 border border-gray rounded-md shadow-sm focus:ring-blue focus:border-blue sm:text-sm" placeholder="Search products...">
                    </div>
                    <label for="servCat" class="block text-lg font-medium text-gray-700">Category</label>
                        <div class="flex flex-col mb-4 rounded-lg overflow-hidden gap-y-2 text-md">
                        @foreach($filters as $item)
                            <div class="flex items-center border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                <input class="ml-2 peer hidden" type="checkbox" id="filter_service_{{ $item->id }}" name="filters[]" value="{{ $item->id }}">
                                <label class="pl-4 py-1 w-full h-full peer-checked:bg-lightblue" for="filter_service_{{ $item->id }}">{{ $item->name }}</label>
                            </div>
                            @foreach($item->category as $subitem)
                                <div class="flex items-center border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                    <input class="ml-2 peer hidden" type="checkbox" id="filter_category_{{ $subitem->id }}" name="filters[]" value="{{ $subitem->id }}">
                                    <label class="pl-12 py-1 w-full h-full peer-checked:bg-lightblue" for="filter_category_{{ $subitem->id }}">{{ $subitem->name }}</label>
                                </div>
                                @foreach($subitem->subcategories as $subcatitem)
                                    <div class="flex items-center border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                        <input class="ml-2 peer hidden" type="checkbox" id="filter_subcategory_{{ $subcatitem->id }}" name="filters[]" value="{{ $subcatitem->id }}">
                                        <label class="pl-20 py-1 w-full h-full peer-checked:bg-lightblue" for="filter_subcategory_{{ $subcatitem->id }}">{{ $subcatitem->name }}</label>
                                    </div>
                                @endforeach
                            @endforeach
                        @endforeach

                    </div>
                    <div class="flex">
                        <button type="submit" class="mt-4 m-auto px-4 py-2 bg-blue text-white rounded-md shadow-md hover:bg-blue-600">Apply Filters</button>
                    </div>
                </form>
            </div>

        <!-- Product Display -->
            <div class="flex flex-wrap justify-center gap-[2vw] w-full md:w-5/6 p-4">
                @if (count($products) > 0)
                    @foreach($products as $product)
                        <button id="{{ $product->code }}" class="openModalBtn cursor-pointer relative group text-center p-4 w-full md:w-[15vw] h-32 md:h-[35vh] border border-black rounded-md hover:shadow-md hover:transform hover:scale-[1.05] duration-300">
                            <div class="flex md:block w-full h-full duration-300 overflow-hidden">
                                <img class="block m-auto md:mx-auto w-1/4 md:w-1/2 mb-6" src="{{ asset('storage/images/products/'. $product->code .'.png') }}" alt="Item image">
                                <h1 class="m-auto w-3/4 text-md font-medium md:mt-16">{{$product->name}}</h1>
                            </div>
                        </button>
                    @endforeach
                @else
                    <h1 class="text-center mt-32">No items found</h1>
                @endif

                
            </div>
            
            <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center md:p-4">
                <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 rounded-lg overflow-hidden transform -translate-x-1/2 -translate-y-1/2 w-full md:w-1/2 h-auto bg-white shadow-2xl p-8 rounded">
                    <div id="modCont">

                    </div>
                    <div class="flex flex-wrap w-full">

                        <button onclick="sendEmail('item')" class="mt-4 mx-auto px-2 min-w-24 w-3/4 md:w-auto py-2 bg-darkblue text-white rounded-md shadow-md border border-gray border-opacity-20 hover:scale-105 duration-300">Inquire</button>
                        <button onclick="addToBasket()" class="closeModalBtn mt-4 mx-auto px-2 min-w-24 w-3/4 md:w-auto py-2 bg-green-400 text-black rounded-md shadow-md border border-gray border-opacity-20 hover:scale-105 duration-300">Add to Basket</button>
                        <button class="closeModalBtn mt-4 mx-auto px-2 min-w-24 w-3/4 md:w-auto py-2 bg-red-500 text-white rounded-md shadow-md border border-gray border-opacity-20 hover:scale-105 duration-300">Close</button>
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

    const burger = document.getElementById('burger');
    const filters = document.getElementById('filters');

    // BURGER 
        function toggleFilter(){
            filters.classList.toggle('hidden');
        }

        // scroll listener
            let ScrollTop = 0;
            window.addEventListener("scroll", function() {
                let scrollTop = window.pageYOffset || document.documentElement.scrollTop;
                if (scrollTop > ScrollTop) {
                    // Scroll down
                    burger.classList.add("opacity-0");
                } else {
                    // Scroll up
                    burger.classList.remove("opacity-0");
                }
                ScrollTop = scrollTop <= 0 ? 0 : scrollTop; // For Mobile or negative scrolling
            }, false);
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
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-20">Item:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.name}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-20">Item Code:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.code}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-20">Service Category:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.service.name}; ${item.category.name}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-20">Item Category:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.subcategory.name}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-20">pcs_unit:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.pcs_unit}<h1>
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
            <button onclick="deleteFromBasket('b ${item.code}')" class="m-auto px-2 bg-red-500 text-white border-black shadow-xl rounded-md mr-4">Remove</button>
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