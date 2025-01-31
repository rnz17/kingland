@include('partials.head')

@include('partials.nav')
<div class="flex w-full pt-12">
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 py-24 rounded-xl shadow-xl bg-notwhite">
        <form class="w-full flex flex-wrap gap-x-2 gap-y-4" method="post" action="{{ route('createProduct.store') }}" enctype="multipart/form-data">
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
            <label class="w-full pl-4 mb-2" for="name">Image<span class="text-red-500 pl-1">*</span></label>
                <input id="fileInput" class="m-auto w-full pl-24" type="file" accept="image/*" name="image" required>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-1" for="category">Service Category<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="service_id" name="service_id" required onchange="serviceDD(this.value)">
                    <option value="">Select a service category</option>
                    @foreach($services as $service)
                        <option value="{{ $service->id }}">{{ $service->name }}</option>
                    @endforeach
                </select>
            </div>

            <div id="category2" class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="category">Main Category<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="category_id" name="category_id" required onchange="mainDD(this.value)">
                    <option value="">Select an option</option>
                </select>
            </div>

            <div id="category3" class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="category">Item Category<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="subcategory_id" name="subcategory_id" required>
                    <option value="">Select an option</option>
                </select>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="brand">Brand</label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="brand" name="brand" required>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="supplier">Supplier<span class="text-red-500 pl-1">*</span></label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="supplier" name="supplier" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="spec">Specification<span class="text-red-500 pl-1">*</span></label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="spec" name="spec" required>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit">Unit<span class="text-red-500 pl-1">*</span></label>
                <select class="rounded-lg m-auto w-3/4" id="unit" name="unit" required>
                @foreach($units as $unit)
                        <option value="{{ $unit }}">{{ $unit }}</option>
                @endforeach
                </select>
            </div>

        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="pcs_unit">Pieces per Unit<span class="text-red-500 pl-1">*</span></label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="pcs_unit" name="pcs_unit">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit_price">Unit Price<span class="text-red-500 pl-1">*</span></label>
                <input class="rounded-lg m-auto w-3/4" type="text" id="unit_price" name="unit_price" required pattern="^\d+(\.\d{1,2})?$">
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
<script>

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

</script>
