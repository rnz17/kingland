@include('partials.head')

@include('partials.nav')

<div class="flex w-full py-12">

    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 rounded-xl shadow-xl bg-notwhite">
        <h1 class="text-3xl font-semibold">{{ $item->name }}</h1>
        @if(asset('storage/images/products/'.$item->code.'.png'))
            <img src="{{ asset('storage/images/products/'.$item->code.'.png') }}" class="h-auto max-w-[300px] m-auto py-2">
        @endif
        <form class="w-full flex flex-wrap gap-x-2 gap-y-4" method="post" action="{{ route('products.update') }}" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <input type="hidden" value="{{ $item->id }}" name="id">
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 m-auto mb-2" for="code">Code</label>
                <input onblur="checkCode(value)" class="rounded-lg m-auto w-3/4"  value="{{ $item->code }}" type="text" id="code" name="code" required>
            </div>
        <!-- hide -->
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 m-auto mb-2" for="name">Name</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->name }}" type="text" id="name" name="name" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                    <label class="w-full pl-4 mb-2" for="name">Image
                        <span class="text-lightgray pl-1 text-sm">Upload new file to change image.</span>
                        <span class="text-lightgray pl-1 text-sm">PNG only.</span>
                    </label>
                    <input id="fileInput" class="m-auto w-full pl-24" type="file" accept="image/*" name="image">
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="service_id">Service Category</label>
                <select class="rounded-lg m-auto w-3/4" id="service_id" name="service_id" required>
                    <option value="{{ $item->service_id }}">{{ $services->where('id',$item->service_id)->first()->name }}</option>

                    @foreach($services->reject(fn($service) => $service->id === $item->service_id) as $service)
                            <option value="{{ $service->id }}">{{ $service->name }}</option>
                    @endforeach
                </select>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="category_id">Main Category</label>
                <select class="rounded-lg m-auto w-3/4" id="category_id" name="category_id" required>
                    <option value="{{ $item->category_id }}">{{ $cat->where('id', $item->category_id)->first()?->name ?? 'No category' }}
                    </option>

                    @foreach($cat->reject(fn($opt) => $opt->id === $item->category_id) as $opt)
                            <option value="{{ $opt->id }}">{{ $opt->name }}</option>
                    @endforeach 
                </select>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="subcategory_id">Item Category</label>
                <select class="rounded-lg m-auto w-3/4" id="subcategory_id" name="subcategory_id" required>
                <option value="{{ $item->subcategory_id }}">{{ $subcat->where('id',$item->subcategory_id)->first()->name ?? 'No category' }}</option>

                    @foreach($subcat->reject(fn($opt) => $opt->id === $item->category_id) as $opt)
                            <option value="{{ $opt->id }}">{{ $opt->name }}</option>
                    @endforeach 
                </select>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="brand">Brand</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->brand }}" type="text" id="brand" name="brand" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="supplier">Supplier</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->supplier }}" type="text" id="supplier" name="supplier" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="spec">Specification</label>
                <textarea name="spec" id="spec" class="rounded-lg m-auto w-3/4">{{ $item->spec }}</textarea>
            </div>

            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit">UOM</label>
                <select class="rounded-lg m-auto w-3/4" id="unit" name="unit" required>
                    
                <option value="{{ $item->unit }}">{{ $item->unit }}</option>
                
                @foreach($units as $unit)
                    @if($unit == $item->unit)
                    @else
                        <option value="{{ $unit }}">{{ $unit }}</option>
                    @endif
                @endforeach
                </select>
            </div>

        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="pcs_unit">QTY / UOM</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->pcs_unit }}" type="text" id="pcs_unit" name="pcs_unit">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit_price">Unit Price</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->unit_price }}" type="text" id="unit_price" name="unit_price" required pattern="^\d+(\.\d{1,2})?$">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="value_ratio">Value Ratio</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->value_ratio }}" type="text" id="value_ratio" name="value_ratio">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="status">Status</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->status }}" type="text" id="status" name="status">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="available">Available</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->available }}" type="text" id="available" name="available">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="needed">Needed</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->needed }}" type="text" id="needed" name="needed">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="to_buy">To Buy</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->to_buy }}" type="text" id="to_buy" name="to_buy">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="low_alert">Low Alert</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->low_alert }}" type="text" id="low_alert" name="low_alert">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="prod_note">Product Note</label>
                <input class="rounded-lg m-auto w-3/4" value="{{ $item->prod_note }}" type="text" id="prod_note" name="prod_note">
            </div>
        
            <div class="m-auto flex flex-wrap items-center justify-center text-center h-16">
                <button class="border border-gray px-6 py-0 rounded-lg hover:scale-105 duration-500" type="submit">Submit</button>
            </div>
        </form>

            <div class="flex w-full">
                <div class="mx-auto w-3/4">

                </div>
                <div class="mx-auto w-1/4">
                <form action="{{ route('products.delete', ['code' => $item->code]) }}" method="POST">
                    @csrf
                    @method('DELETE')
                    <button class="left-full w-full border border-gray bg-red-300 px-6 py-0 rounded-lg hover:scale-105 duration-500" type="submit">
                        Delete Product
                    </button>
                </form>


                </div>

            </div>
        

    </div>
</div>

<script src="/tinymce/tinymce.min.js"></script>

<script>

    tinymce.init({
        selector: '#spec',
        plugins: 'lists link',
        toolbar: 'bold italic underline | bullist numlist | link image code',
        height: 300,
        skin: "oxide",
        content_css: "default",
        icons: "default",
        license_key: 'gpl'  // Add this line to remove the evaluation mode warning
    });

</script>