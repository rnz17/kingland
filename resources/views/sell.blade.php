@include('partials.head')

    @include('partials.nav')

    <main class="flex w-full mx-auto pb-32 bg-notwhite">

        <!-- Filters -->
            <div id="filters" class="hidden md:block absolute md:relative bg-notwhite z-40 h-full md:h-auto w-full md:w-1/4 p-4">
                <form id="filt" action="{{ route('sell') }}" method="GET">
                    

                    <div class="mb-4 relative">
                        <label for="search" class="block text-lg font-medium w-1/4 text-gray-700">Search</label>
                        <marquee class="absolute top-0 right-0 w-3/4 text-md text-gray">Use search bar and filters to find what you need</marquee>
                        <input type="text" id="search" name="search" class="mt-1 block w-full p-2 border border-gray rounded-md shadow-sm focus:ring-blue focus:border-blue sm:text-sm" placeholder="Search product name...">
                    </div>

                    <div class="flex mb-6">
                        <button type="button" onclick="clearFilters()" class="mt-4 m-auto px-4 py-1 bg-notwhite border border-gray border-opacity-10 text-black rounded-md shadow-md hover:bg-green-200 duration-300">Clear Filters</button>
                        <button type="submit" class="mt-4 m-auto px-4 py-1 bg-blue text-white rounded-md shadow-md hover:bg-textblue duration-300">Apply Filters</button>
                    </div>

                    <label for="servCat" class="block text-lg font-medium text-gray-700">Category</label>
                    <div class="flex flex-col mb-4 rounded-lg overflow-hidden gap-y-1 text-md">
                        @foreach($filters as $item)
                            <div class="flex items-center py-2 md:py-0 border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                <button type="button" onclick="toggleDropdown('catDD{{ $item->id }}', 'img{{ $item->id }}')" class="w-1/12 h-full relative" data-id="{{ $item->id }}">
                                    <img src="{{ asset('images/nav/dd1.png') }}" class="top-0 left-0 transform -translate-y-1/2 absolute w-1/2 ml-2">
                                    <img id="img{{ $item->id }}" src="{{ asset('images/nav/dd1.png') }}" class="top-0 left-0 transform -translate-y-1/2 absolute w-1/2 ml-2 transform rotate-90 duration-300">
                                </button>
                                <input class="ml-2 peer hidden" type="checkbox" id="filter_service_{{ $item->id }}" name="filters[]" value="{{ $item->id }}">
                                <label class="pl-4 w-full h-full peer-checked:bg-lightblue" for="filter_service_{{ $item->id }}">{{ $item->name }}</label>
                            </div>
                            <div id="catDD{{ $item->id }}" class="h-0 flex flex-col gap-y-1 overflow-hidden transition-all duration-500">
                                @foreach($item->category as $subitem)
                                    <div class="flex items-center py-2 md:py-0 m-auto mr-0 w-11/12 border border-gray border-opacity-50 rounded-lg overflow-hidden">
                                        <button type="button" onclick="toggleDropdown('subcatDD{{ $subitem->id }}', 'subimg{{ $subitem->id }}')" class="w-1/12 h-full relative" data-id="{{ $subitem->id }}">
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
                    
                </form>
            </div>

        <!-- Product Display -->
        <div class="flex flex-col w-full md:w-5/6">
            <!-- pagination -->
            <div class="pt-6 px-4 md:px-12">
                {{ $products->links('vendor.pagination.tailwind') }}
            </div>
            
            <!-- products -->
            <div class="m-auto flex flex-wrap gap-[2vw] justify-center items-center w-full h-auto p-4">

                @foreach($products as $product)    
                    <!-- extend card test -->
                    <div class="group w-[16rem] h-[19rem] hover:scale-125 transform hover:-translate-x-2  hover:z-40 [perspective:1000px] duration-500">
                        <div class="relative w-full h-full transition-transform duration-500 [transform-style:preserve-3d] group-hover:[transform:rotateY(180deg)]">

                            <!-- Front Side -->
                            <div class="absolute w-full h-[19rem] bg-white border border-gray border-opacity-10 flex flex-col items-center justify-center text-2xl shadow-xl rounded-xl [backface-visibility:hidden]">
                                <div class="flex h-2/3 w-full p-2">
                                    <img src="{{ asset('storage/images/products/'. $product->code .'.png') }}" class="m-auto w-auto h-auto max-w-[15rem] max-h-full">
                                </div>
                                <div class="flex h-1/3 w-full m-auto p-2 text-center">
                                    <h1 class="m-auto text-base opacity-90">{{ $product->name }}</h1>
                                </div>
                            </div>
                            
                            <!-- Back Side -->
                            <div class="absolute w-full h-auto min-h-[19rem] bg-[#131A35] text-[#FDFDFD] border border-gray border-opacity-10 flex flex-col items-center justify-center text-2xl shadow-xl rounded-xl [backface-visibility:hidden] [transform:rotateY(180deg)] px-1 py-2">
                                <div class="flex m-auto mt-0 w-full h-1/6 overflow-hidden px-1">
                                    <img src="{{ asset('storage/images/products/'. $product->code .'.png') }}" class="m-auto w-auto h-auto max-w-[7.5rem] max-h-[7rem]">
                                    <div class="flex w-1/2">
                                        <h1 class="m-auto text-xs text-ellipsis opacity-90 px-1">{{ $product->name }}</h1>
                                    </div>
                                </div>
                                
                                <div class="flex flex-col m-auto w-full h-full mt-4 px-2">
                                    @if(!empty($product->brand))
                                        <div class="m-auto flex w-full px-0 opacity-80 mb-2">
                                            <div class="w-1/2">
                                                <h1 class="m-auto ml-0 text-xs text-left">Brand:</h1>
                                            </div>
                                            <h1 class="m-auto ml-0 text-xs text-right">{{ $product->brand }}</h1>
                                        </div>
                                    @endif
                                    @if(!empty($product->unit))
                                        <div class="m-auto flex w-full px-0 opacity-80 mb-2">
                                            <div class="w-1/2">
                                                <h1 class="m-auto ml-0 text-xs text-left">UOM:</h1>
                                            </div>
                                            <h1 class="m-auto ml-0 text-xs text-right">{{ $product->unit }}</h1>
                                        </div>
                                    @endif
                                    @if(!empty($product->pcs_unit))
                                        <div class="m-auto flex w-full px-0 opacity-80 mb-2">
                                            <div class="w-1/2">
                                                <h1 class="m-auto ml-0 text-xs text-left">QTY / UOM:</h1>
                                            </div>
                                            <h1 class="m-auto ml-0 text-xs text-right">{{ $product->pcs_unit }}</h1>
                                        </div>
                                    @endif
                                    @if(!empty($product->spec))
                                        <div class="flex flex-col w-full px-0 opacity-80">
                                            <div class="w-full text-center mb-1">
                                                <h1 class="m-auto text-xs">Specifications:</h1>
                                            </div>
                                            <div class="w-full py-1 px-2 overflow-hidden">
                                                <h1 class="text-xs break-words whitespace-normal">
                                                    {!! $product->spec !!}
                                                </h1>
                                            </div>
                                        </div>
                                    @endif

                                    <div class="m-auto mb-0 flex w-full py-4">
                                        <button onclick="sendEmail('item','{{ $product->code }}')" class="m-auto text-xs text-[#131A35] bg-lightblue px-2 py-1 rounded-lg">Inquire</button>
                                        <button onclick="addToBasket('{{ $product->code }}')" class="m-auto text-xs text-[#131A35] bg-green-300 px-2 py-1 rounded-lg">Add to Basket</button>
                                    </div>
                                    
                                </div>

                            </div>
                        </div>
                    </div>
                @endforeach

                
            </div>

            <!-- pagination -->
            <div class="pt-6 px-4 md:px-12">
                {{ $products->links('vendor.pagination.tailwind') }}
            </div>
        </div>

    </main>

@include('partials.footer')
@include('partials.marquee')

</body>
<script>

    const modal = document.getElementById('modal');
    const openModalBtns = document.querySelectorAll('.openModalBtn');
    const closeModalBtn = document.querySelectorAll('.closeModalBtn');
    const nav = document.getElementById('nav');
    const cont = document.getElementById('modCont');
    var basket = [];
    var itemCodes = [];
    const basketCont = document.getElementById('basketCont');
    const burger = document.getElementById('burger');
    const filters = document.getElementById('filters');
    var products = @json($products);
    products = Object.values(products);
    products = products[1];

    function lookfor(code){
        for (let prod of products){
                if(prod.code == code){
                    return prod;
                }
            }
    }

    //FILTER: Toggle visibility of the dropdown and rotate the button icon
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

    // MOBILE; BURGER 
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

    // email
        function sendEmail(type,code) {
            var recipient = "raabanilla@kingland.ph";
            let item = lookfor(code);


            
            // console.log(type);
            if(type === 'item'){
                
                var subject = `Request for Quotation: ${item.name}`;
                var body = `Item Code: ${item.code}\nItem Name: ${item.name}\nItem Quantity:{Please add Order Quantity}`;
    
                var mailtoLink = 'https://mail.google.com/mail/?view=cm&fs=1&to=' + encodeURIComponent(recipient) + 
                                    '&su=' + encodeURIComponent(subject) + 
                                    '&body=' + encodeURIComponent(body);
    
    
                alert("Please include other information in the email\nlike product quantity and other details.");
                window.open(mailtoLink, '_blank');

            }else{
                if(basket.length >= 2){

                    var body = `List of items:\n`;
                    var subject = `Request for Quotation`;

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

                    var subject = `Request for Quotation: ${item.name}`;
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

        function addToBasket(code){
            let item = lookfor(code);

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
                console.log(basket);
                console.log(itemCodes);
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