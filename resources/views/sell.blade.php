@include('partials.head')

    @include('partials.nav')

    <main class="flex w-full mx-auto pb-32">

        <!-- Filters -->
            <div id="filters" class="hidden md:block absolute md:relative bg-white z-40 h-full md:h-auto w-full md:w-1/4 p-4">
                <form id="filt" action="{{ route('sell') }}" method="GET">
                    
                    <div class="mb-4 relative">
                        <label for="search" class="block text-lg font-medium w-1/4 text-gray-700">Search</label>
                        <marquee class="absolute top-0 right-0 w-3/4 text-md text-gray">Use search bar and filters to find what you need</marquee>
                        <input type="text" id="search" name="search" class="mt-1 block w-full p-2 border border-gray rounded-md shadow-sm focus:ring-blue focus:border-blue sm:text-sm" placeholder="Search product name...">
                    </div>
                    <label for="servCat" class="block text-lg font-medium text-gray-700">Category</label>
                    <div class="flex flex-col mb-4 rounded-lg overflow-hidden gap-y-1 text-md">
                        @foreach($filters as $item)
                            <div class="flex items-center py-2 md:py-0 border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                <button type="button" onclick="toggleDropdown('catDD{{ $item->id }}', 'img{{ $item->id }}')" class="w-1/12 h-full relative bg-red-300" data-id="{{ $item->id }}">
                                    <img src="{{ asset('images/nav/dd1.png') }}" class="top-0 left-0 transform -translate-y-1/2 absolute w-1/2 ml-2">
                                    <img id="img{{ $item->id }}" src="{{ asset('images/nav/dd1.png') }}" class="top-0 left-0 transform -translate-y-1/2 absolute w-1/2 ml-2 transform rotate-90 duration-300">
                                </button>
                                <input class="ml-2 peer hidden" type="checkbox" id="filter_service_{{ $item->id }}" name="filters[]" value="{{ $item->id }}">
                                <label class="pl-4 w-full h-full peer-checked:bg-lightblue" for="filter_service_{{ $item->id }}">{{ $item->name }}</label>
                            </div>
                            <div id="catDD{{ $item->id }}" class="h-0 flex flex-col gap-y-1 overflow-hidden transition-all duration-500">
                                @foreach($item->category as $subitem)
                                    <div class="flex items-center py-2 md:py-0 m-auto mr-0 w-11/12 border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                        <button type="button" onclick="toggleDropdown('subcatDD{{ $subitem->id }}', 'subimg{{ $subitem->id }}')" class="w-1/12 h-full relative bg-red-300" data-id="{{ $subitem->id }}">
                                            <img src="{{ asset('images/nav/dd1.png') }}" class="top-0 left-0 transform -translate-y-1/2 absolute w-1/2 ml-2">
                                            <img id="subimg{{ $subitem->id }}" src="{{ asset('images/nav/dd1.png') }}" class="top-0 left-0 transform -translate-y-1/2 absolute w-1/2 ml-2 transform rotate-90 duration-500">
                                        </button>
                                        <input class="ml-2 peer hidden" type="checkbox" id="filter_category_{{ $subitem->id }}" name="filters[]" value="cat{{ $subitem->id }}">
                                        <label class="pl-4 w-full h-full peer-checked:bg-lightblue" for="filter_category_{{ $subitem->id }}">{{ $subitem->name }}</label>
                                    </div>
                                    <div id="subcatDD{{ $subitem->id }}" class="h-0 flex flex-col gap-y-1 overflow-hidden transition-all duration-500">
                                        @foreach($subitem->subcategories as $subcatitem)
                                            <div class="flex items-center py-2 md:py-0 m-auto mr-0 w-5/6 border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                                <input class="ml-2 peer hidden" type="checkbox" id="filter_subcategory_{{ $subcatitem->id }}" name="filters[]" value="sub{{ $subcatitem->id }}">
                                                <label class="pl-12 w-full h-full peer-checked:bg-lightblue" for="filter_subcategory_{{ $subcatitem->id }}">{{ $subcatitem->name }}</label>
                                            </div>
                                        @endforeach
                                    </div>
                                @endforeach
                            </div>
                        @endforeach
                    </div>
                    <div class="flex">
                        <button type="button" onclick="clearFilters()" class="mt-4 m-auto px-4 py-2 bg-notwhite text-black rounded-md shadow-md hover:bg-green-200 duration-300">Clear Filters</button>
                        <button type="submit" class="mt-4 m-auto px-4 py-2 bg-blue text-white rounded-md shadow-md hover:bg-textblue duration-300">Apply Filters</button>
                    </div>
                </form>
            </div>

        <!-- Product Display -->
        <div class="flex flex-col w-full md:w-5/6">
            <!-- pagination -->
            <div class="pt-6 px-4 md:px-12">
                {{ $products->links('vendor.pagination.tailwind') }}
            </div>
            
            <!-- products -->
            <div class="m-auto flex flex-wrap justify-center gap-[2vw] w-full h-auto p-4">
                @if (count($products) > 0)
                    @foreach($products as $product)
                        <button id="{{ $product->code }}" class="openModalBtn cursor-pointer relative group text-center p-4 w-full md:w-[15vw] h-32 md:h-[35vh] min-w-32 min-h-[350px] border border-black rounded-md hover:shadow-md hover:transform hover:scale-[1.05] duration-300">
                            <div class="flex flex-col md:block w-full h-full duration-300 overflow-hidden">
                                <div class="flex h-1/2">
                                    <img class="block max-h-full max-w-full m-auto md:mx-auto md:w-auto" src="{{ asset('storage/images/products/'. $product->code .'.png') }}" alt="Item image">
                                </div>
                                <div class="flex h-1/2">
                                    <h1 class="m-auto w-3/4 text-md font-medium md:mt-16">{{$product->name}}</h1>
                                </div>
                            </div>
                        </button>
                    @endforeach
                @else
                    <h1 class="text-center mt-32">No items found</h1>
                @endif

                
            </div>

            <!-- pagination -->
            <div class="pt-6 px-4 md:px-12">
                {{ $products->links('vendor.pagination.tailwind') }}
            </div>
        </div>
            
        <!-- modal -->
            <div id="modal" class="hidden fixed z-20 top-0 left-0 h-screen w-screen bg-transparent justify-center backdrop-blur-md items-center sm:p-4 z-50">
                <div class="relative block left-1/2 top-1/2 border border-gray border-opacity-50 rounded-lg overflow-hidden transform -translate-x-1/2 -translate-y-1/2 w-full md:w-1/2 h-full sm:h-auto bg-white shadow-2xl p-8 rounded">
                    <div id="modCont">

                    </div>
                    <div class="flex flex-wrap w-full">

                        <button class="closeModalBtn mt-4 mx-auto px-2 min-w-24 w-3/4 md:w-auto py-2 bg-red-500 text-white rounded-md shadow-md border border-gray border-opacity-20 hover:scale-105 duration-300">Close</button>
                        <button onclick="sendEmail('item')" class="mt-4 mx-auto px-2 min-w-24 w-3/4 md:w-auto py-2 bg-darkblue text-white rounded-md shadow-md border border-gray border-opacity-20 hover:scale-105 duration-300">Inquire</button>
                        <button onclick="addToBasket()" class="closeModalBtn mt-4 mx-auto px-2 min-w-24 w-3/4 md:w-auto py-2 bg-green-400 text-black rounded-md shadow-md border border-gray border-opacity-20 hover:scale-105 duration-300">Add to Basket</button>
                    </div>
                </div>
            </div>  

    </main>

@include('partials.footer')
@include('partials.marquee')

</body>
<script>
    // Toggle visibility of the dropdown and rotate the button icon
        function toggleDropdown(divID, imgID) {
            const div = document.getElementById(divID);
            const img = document.getElementById(imgID);
            const isClosed = div.classList.contains('h-0');
            
            // Toggle the class to open/close the dropdown
            if (isClosed) {
                div.classList.remove('h-0');
                img.classList.remove('rotate-90');
                localStorage.setItem(divID, 'open');  // Save the open state
            } else {
                div.classList.add('h-0');
                img.classList.add('rotate-90');
                localStorage.setItem(divID, 'closed');  // Save the closed state
            }
        }

    function clearFilters() {
        // Reset the search input
        document.getElementById('search').value = '';

        // Uncheck all checkboxes
        const checkboxes = document.querySelectorAll('input[type="checkbox"]');
        checkboxes.forEach(checkbox => {
            checkbox.checked = false;
        });

        // Submit the form to reset the filters
        document.getElementById('filt').submit();
    }



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
            var products = @json($products);
            var code = btn.id;
            products = Object.values(products);
            products = products[1];
            // console.log('products:',products[1]);
            for (let product of products){
                if (product.code == code){
                    item = product;
                    break
                }
            }

            var content = `<img src="{{ asset('storage/images/products/${item.code}.png') }}" class="max-h-[15vh] md:max-h-[30vh] my-4 shadow-md mx-auto">
                    <div class="items-center">
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-4 md:pl-20">Item:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.name}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-4 md:pl-20">Item Code:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.code}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-4 md:pl-20">Item Specifications:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.spec}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-4 md:pl-20">Item Category:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.subcategory.name}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-4 md:pl-20">Unit of Measure:</h1>
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-center">${item.unit}<h1>
                        </div>
                        <div class="flex w-full border-b border-black border-opacity-50">
                            <h1 class="text-md md:text-xl font-medium py-4 m-auto md:mx-auto w-1/2 text-left pl-4 md:pl-20">Pieces per unit:</h1>
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
            var recipient = "raabanilla@kingland.ph";
            // console.log(type);
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
                // console.log(`Item: ${item.code} is already in basket`);
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