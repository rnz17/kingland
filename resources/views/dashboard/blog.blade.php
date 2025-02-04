@include('partials.head')

@include('partials.nav')

<div class="m-auto w-3/4 bg-notwhite p-12 mt-12">
    <table class="min-w-full border-collapse border border-gray-300 mb-2">
        <thead>
            <tr>
                <th class="border border-gray px-6 py-4 text-center w-3/4">Blog Title</th>
                <th class="border border-gray px-6 py-4 text-center">Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($blogs as $blog)
                <tr>
                    <td class="border border-gray px-6 py-4 text-center">
                        <p>{{ $blog->title }}</p>
                    </td>
                    <td class="border border-gray px-6 py-4 text-center">
                        <div class="flex flex-wrap">
                            <a href="{{ route('blogs.edit', $blog->id) }}" class="m-auto px-2 py-1 bg-lightblue text-white rounded">Edit</a>
                            <form action="{{ route('blogs.delete', ['id' => $blog->id]) }}" method="POST"class="m-auto">
                                @csrf
                                @method('DELETE')
                                <button class="px-2 py-1 bg-red-500 text-white rounded" type="submit">
                                    Delete
                                </button>
                            </form>
                        </div>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<form action="{{ route('blogs.store') }}" method="POST" enctype="multipart/form-data">
    @csrf
    <div class="flex w-full py-12 px-2">
        <div class="m-auto w-3/4 h-auto">
            
            <!-- Image Input -->
                <div class="flex mb-4">
                    <input id="fileInput" class="m-auto bg-lightblue p-4" type="file" accept="image/*" name="image_url">
                    <img id="preview" class="hidden m-auto p-4 w-1/2" />
                </div>

            <!-- Title Input -->
                <div class="relativeblock mb-4 w-full">
                    <input id="title" class="m-auto p-4 w-1/3 border border-black border-opacity-10 text-xl bg-notwhite tracking-wider focus:placeholder-none duration-500" type="text" name="title" placeholder="Title" required>
                </div>

            <!-- Blog Content Text -->
                <div class="relativeblock mb-4 w-full">
                    <textarea name="content" id="content" class="w-full h-60 border p-4 text-xl" placeholder="Write your blog content here..."></textarea>
                </div>
                
            <!-- Submit Button -->
                @if(session('success'))
                    <div class="flex mt-4">
                        <div class="m-auto">
                                {{ session('success') }}
                        </div>
                    </div>
                @endif

            <!-- Submit Button -->
                <div class="flex mt-4">
                    <button type="submit" class="m-auto text-gray border border-blue border-opacity-50 bg-lightblue font-medium tracking-wider px-4 py-2 rounded-md shadow-xl">SUBMIT</button>
                </div>
        </div>
    </div>
</form>

</body>

<script src="/tinymce/tinymce.min.js"></script>


<script>

    tinymce.init({
        selector: '#content',
        plugins: 'lists link image code',
        toolbar: 'bold italic underline | bullist numlist | link image code',
        height: 300,
        skin: "oxide",
        content_css: "default",
        icons: "default",
        license_key: 'gpl'  // Add this line to remove the evaluation mode warning
    });

    // Image Input 
        const fileInput = document.getElementById('fileInput');
        const preview = document.getElementById('preview');

        fileInput.addEventListener('change', function() {
            const file = fileInput.files[0];

            if (file) {
                // Create a FileReader object to read the file
                const reader = new FileReader();

                reader.onload = function(e) {
                    // Set the src of the image to the result from FileReader
                    preview.src = e.target.result;
                    preview.style.display = 'block'; // Show the image
                };

                // Read the file as a data URL (base64 encoded string)
                reader.readAsDataURL(file);
                fileInput.classList.add('hidden')
            } else {
                
                preview.classList.add('hidden') // Hide the image if no file is selected
            }
        });

</script>