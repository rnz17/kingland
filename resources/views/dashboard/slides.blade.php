@include('partials.head')
@include('partials.nav')

@include('partials.dashopt')

<div class="w-full bg-lightergray flex flex-col p-6">

    <!-- Upload Form -->
        <div class="m-auto flex flex-nowrap w-full min-w-[36rem] h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl mt-6">
            <div class="mx-auto w-full px-4">
                <h1 class="text-xl font-bold pb-4 w-full">Upload Image<span class="font-thin text-gray text-sm ml-4">*jpeg,jpg,png,gif; &lt;3mb; &gt;1920p width</span></h1>
                <form id="uploadForm" action="{{ route('carousel.store') }}" method="POST" enctype="multipart/form-data" class="mb-4 flex gap-4">
                    @csrf
                    <input type="file" name="slide" id="slideInput" class="border p-2 rounded w-full">
                    <button type="submit" class="bg-blue text-white px-4 py-2 rounded">Add Slide</button>
                </form>
            </div>
            <div class="w-full px-4">
                <h1 class="text-xl font-bold pb-4 w-full">Images</h1>
                @foreach($images as $item)
                    <div class="m-auto w-full flex flex-nowrap items-center gap-4">
                        <!-- Image Preview -->
                        <img src="{{ asset('storage/' . $item->fileName) }}" class="m-auto w-1/2 h-auto aspect-video object-cover">

                        <!-- Delete Form -->
                        <form action="{{ route('carousel.destroy', $item->id) }}" method="POST" onsubmit="return confirm('Are you sure you want to delete this image?');" class="m-auto">
                            @csrf
                            @method('DELETE') <!-- Specify DELETE request -->
                            <input type="hidden" name="img_id" value="{{ $item->id }}">
                            <button type="submit" class="bg-red-500 text-white px-4 py-2 rounded">Delete</button>
                        </form>
                    </div>
                @endforeach
            </div>
        </div>


    <!-- Order Section -->
        <div class="m-auto flex flex-col w-full min-w-[36rem] h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl mt-6">
            <h1 class="text-xl font-bold pb-4">Change Order</h1>

            <!-- Draggable Area -->
            <div id="sortable" class="m-auto flex flex-nowrap gap-4 w-full min-w-[36rem] h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl mt-6">
                @foreach($images as $item)
                    <div class="sortable-item mx-auto w-1/4 bg-lightblue flex aspect-video border border-black rounded-lg overflow-hidden cursor-grab"
                        data-id="{{ $item->id }}">
                        <img src="{{ asset('storage/' . $item->fileName) }}" class="w-full h-auto m-auto object-cover">
                    </div>
                @endforeach
            </div>

            <!-- Save Button -->
            <button id="saveOrder" class="bg-green-500 text-white px-4 py-2 rounded mt-4">Save Order</button>
        </div>
</div>

<!-- SortableJS Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Sortable/1.15.2/Sortable.min.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function () {
        let sortable = new Sortable(document.getElementById('sortable'), {
            animation: 300, // Smooth animation
            ghostClass: 'bg-gray-300', // Add a temporary class when dragging
        });

        document.getElementById("saveOrder").addEventListener("click", function () {
            let order = [];
            document.querySelectorAll('.sortable-item').forEach((item, index) => {
                order.push({ id: item.dataset.id, pos: index + 1 }); // Assign new positions
            });

            // Send the updated order to the server
            fetch("{{ route('carousel.updateOrder') }}", {
                method: "POST",
                headers: {
                    "Content-Type": "application/json",
                    "X-CSRF-TOKEN": "{{ csrf_token() }}"
                },
                body: JSON.stringify({ positions: order })
            }).then(response => response.json())
            .then(data => alert(data.message))
            .catch(error => console.error("Error:", error));
        });
    });
</script>