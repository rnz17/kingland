@include('partials.head')

@include('partials.nav')
<div class="flex w-full pt-12">
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 py-24 rounded-xl shadow-xl bg-notwhite">
        <form class="w-full flex flex-wrap gap-x-2 gap-y-4" method="post" action="{{ route('products.create') }}" enctype="multipart/form-data">
            @csrf
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="code">Code<span class="text-red-500 pl-1">*</span></label>
                <input onblur="checkCode(value)" class="rounded-lg m-auto w-3/4" type="text" id="code" name="code" required>
            </div>
        <!-- hide -->
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="name">Name<span class="text-red-500 pl-1">*</span></label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="name" name="name" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="name">Image
                    <span class="text-red-500 pl-1">*</span>
                    <span class="text-lightgray pl-1 text-sm">PNG only.</span>
                </label>
                <input id="fileInput" class="m-auto w-full pl-24" type="file" accept="image/*" name="image" required>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-1" for="service_id">Service Category<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="service_id" name="service_id" required onchange="serviceDD(this.value)">
                    <option value="">Select a service category</option>
                    @foreach($services as $service)
                        <option value="{{ $service->id }}">{{ $service->name }}</option>
                    @endforeach
                </select>
            </div>

            <div id="category2" class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="category_id">Main Category<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="category_id" name="category_id" required onchange="mainDD(this.value)">
                    <option value="">Select an option</option>
                </select>
            </div>

            <div id="category3" class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="subcategory_id">Item Category<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="subcategory_id" name="subcategory_id" required>
                    <option value="">Select an option</option>
                </select>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="brand">Brand<span class="text-red-500 pl-1">*</span></label>
                <input class="mt-0 rounded-lg m-auto w-3/4" type="text" id="brand" name="brand" required>
            </div>

            <div class="flex flex-col w-[100%] my-2">
                <label class="w-full pl-4 mb-2">Suppliers & Prices<span class="text-red-500 pl-1">*</span></label>
                <div id="supplier-container" class="m-auto w-3/4">
                    <div class="supplier-row flex gap-2 mb-2">
                        <select class="m-auto rounded-lg w-1/3 p-2 border" name="supplier_id[]" required>
                            <option value="" disabled selected>Select a Supplier</option>
                            @foreach($suppliers as $supplier)
                                <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                            @endforeach
                        </select>
                        <input class="m-auto rounded-lg w-1/3 p-2 border" type="text" name="price[]" placeholder="Enter price" required>
                        <button type="button" class="remove-supplier bg-red-500 text-white px-3 py-1 rounded">X</button>
                    </div>
                </div>
                <button type="button" id="add-supplier" class="m-auto w-1/6 mt-2 bg-blue text-white px-4 py-2 rounded">Add Supplier</button>
            </div>

        
            <div class="flex flex-wrap w-full">
                <label class="w-full pl-4 mb-2" for="spec">Specification<span class="text-red-500 pl-1">*BG color is for card visualization</span></label>
                
                <div class="m-auto w-3/4">
                    <textarea name="spec" id="spec" class="rounded-lg m-auto" placeholder="Insert Specification"></textarea required>
                </div>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit">UOM<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="unit" name="unit" required>
                @foreach($units as $unit)
                        <option value="{{ $unit }}">{{ $unit }}</option>
                @endforeach
                </select>
            </div>

        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="pcs_unit">QTY / UOM<span class="text-red-500 pl-1">*</span></label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="pcs_unit" name="pcs_unit">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="value_ratio">Value Ratio</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="value_ratio" name="value_ratio">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="status">Status</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="status" name="status">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="available">Available</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="available" name="available">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="needed">Needed</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="needed" name="needed">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="to_buy">To Buy</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="to_buy" name="to_buy">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="low_alert">Low Alert</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="low_alert" name="low_alert">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="prod_note">Product Note</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="prod_note" name="prod_note">
            </div>
        
            <div class="m-auto flex flex-wrap items-center justify-center text-center h-16">
                <button onclick="falseSubmit()" id="submit" class="border border-gray px-6 py-0 rounded-lg hover:scale-105 duration-500" type="submit">Submit</button>
            </div>
        </form>
    </div>
</div>
</body>

<script src="/tinymce/tinymce.min.js"></script>

<script>

    tinymce.init({
        selector: '#spec',
        plugins: 'lists link',
        toolbar: 'fontsize forecolor backcolor | bold italic underline | bullist numlist | link image code',
        height: 300,
        content_style: `
        body { background-color:rgb(19, 26, 53); color: #FDFDFD; }
        ::placeholder { color: #FDFDFD; opacity: 0.6; } /* Placeholder color */
        */* Ensure all text is white */
        `,
        content_css: "default",
        icons: "default",
        license_key: 'gpl'  // Add this line to remove the evaluation mode warning.
    });

    // dropdown
        var cat = @json($cat); // Main categories
        var subcat = @json($subcat); // Subcategories

        function serviceDD(value) {
            // Clear previous options
            var category2 = document.getElementById('category_id');
            category2.innerHTML = '<option value="">If no options, please add one on categories page</option>';
            
            // Populate main category dropdown based on service_id
            cat.forEach(function(category) {
                if (category.service_id == value) {
                    category2.innerHTML += '<option value="' + category.id + '">' + category.name + '</option>';
                }
            });

            // Clear the subcategory dropdown
            var category3 = document.getElementById('subcategory_id');
            category3.innerHTML = '<option value="">Select an option</option>';
        }

        function mainDD(value) {
            // Clear previous options
            var category3 = document.getElementById('subcategory_id');
            category3.innerHTML = '<option value="">If no options, please add one on categories page</option>';
            
            // Populate item category dropdown based on category_id
            subcat.forEach(function(subcategory) {
                if (subcategory.category_id == value) {
                    category3.innerHTML += '<option value="' + subcategory.id + '">' + subcategory.name + '</option>';
                }
            });
        }

    // to check if code is unique
        var products = @json($products);  // Pass the whole array to JavaScript
        var codes = [];
        const button = document.getElementById('submit');

        products.forEach(function(product) {
            var code = product.code.toLowerCase();
            codes.push(code);  // Access the 'name' property
        });

        function checkCode(value) {
            var input = value.toLowerCase();
            const button = document.getElementById('submit');
            console.log(input);

            if (codes.includes(value)) {
                button.setAttribute('type', 'button');  // Change button type to 'button
                alert("Code Already Taken");
            } else {
                button.setAttribute('type', 'submit');  // Change button type to 'submit'
            }
        }

        function falseSubmit(){
            if(button.type == 'button'){
                alert("please check if all inputs are correct \n Product Code might be a dupliate");
            }
        }

    document.getElementById('add-supplier').addEventListener('click', function () {
        let container = document.getElementById('supplier-container');
        let row = document.createElement('div');
        row.className = 'supplier-row flex gap-2 mb-2';

        row.innerHTML = `
            <select class="m-auto rounded-lg w-1/3 p-2 border" name="supplier_id[]" required>
                <option value="" disabled selected>Select a Supplier</option>
                @foreach($suppliers as $supplier)
                    <option value="{{ $supplier->id }}">{{ $supplier->name }}</option>
                @endforeach
            </select>
            <input class="m-auto rounded-lg w-1/3 p-2 border" type="text" name="price[]" placeholder="Enter price" required>
            <button type="button" class="remove-supplier bg-red-500 text-white px-3 py-1 rounded">X</button>
        `;

        container.appendChild(row);

        row.querySelector('.remove-supplier').addEventListener('click', function () {
            row.remove();
        });
    });

    document.addEventListener('click', function (event) {
        if (event.target.classList.contains('remove-supplier')) {
            event.target.closest('.supplier-row').remove();
        }
    });
</script>

