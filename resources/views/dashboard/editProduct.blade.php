@include('partials.head')

@include('partials.nav')

<div class="flex w-full pt-12">
    <div class="m-auto w-3/4 text-md font-normal border border-gray border-opacity-20 p-12 rounded-xl shadow-xl bg-notwhite">
        <form class="w-full flex flex-wrap gap-x-2 gap-y-4" method="post" action="{{ route('editProduct.update') }}">
            @csrf
            @method('POST')
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="code">Code</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->code }}" id="code" name="code" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="name">Name</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->name }}" id="name" name="name" required>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="category">Category</label>
                <select class="rounded-lg m-auto w-3/4" id="category_id" name="category_id" required>
                    <option value="{{ $item->category_id }}">{{ $item->category }}</option>

                    @foreach($filters as $filter)
                        @if($filter->name !== $item->category)
                            <option value="{{ $filter->id }}">{{ $filter->name }}</option>
                        @endif
                    @endforeach
                    
                </select>
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="supplier">Supplier</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->supplier }}" id="supplier" name="supplier">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="spec">Specification</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->spec }}" id="spec" name="spec">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit">Unit</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->unit }}" id="unit" name="unit" required >
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="pcs_unit">Pieces per Unit</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->pcs_unit }}" id="pcs_unit" name="pcs_unit">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="unit_price">Unit Price</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->unit_price }}" id="unit_price" name="unit_price" required pattern="^\d+(\.\d{1,2})?$">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="value_ratio">Value Ratio</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->value_ratio }}" id="value_ratio" name="value_ratio">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="status">Status</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->status }}" id="status" name="status">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="available">Available</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->available }}" id="available" name="available">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="needed">Needed</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->needed }}" id="needed" name="needed">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="to_buy">To Buy</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->to_buy }}" id="to_buy" name="to_buy">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="low_alert">Low Alert</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->low_alert }}" id="low_alert" name="low_alert">
            </div>
        
            <div class="flex flex-wrap w-[32%]">
                <label class="w-full pl-4 mb-2" for="prod_note">Product Note</label>
                <input class="rounded-lg m-auto w-3/4" type="text" value="{{ $item->prod_note }}" id="prod_note" name="prod_note">
            </div>
        
            <div class="m-auto flex flex-wrap items-center justify-center text-center h-16">
                <button class="border border-gray px-6 py-0 rounded-lg hover:scale-105 duration-500" type="submit">Submit</button>
            </div>
        </form>

            <div class="flex w-full">
                <div class="mx-auto w-3/4">

                </div>
                <div class="mx-auto w-1/4">
                <form action="{{ route('editProduct.delete', ['code' => $item->code]) }}" method="POST">
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