@include('partials.head')

@include('partials.nav')


<form action="{{ route('blogs.update', $blog->id) }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <input type="hidden" value="{{$blog->id}}" name="id">
    <input type="hidden" value="{{$blog->image_url}}" name="current_img">
    <div class="flex w-full py-12 px-2">
        <div class="m-auto w-3/4 h-auto">
            
            <!-- Image Display -->
            <div class="flex mb-4">
                @if($blog->image !== false)
                    <img src="{{ asset('storage/'.$blog->image_url) }}" class="m-auto h-64">
                @else
                    <p class="m-auto">blog has no image</p>
                @endif
            </div>

            <!-- Image Input -->
                <div class="flex mb-4">
                    <input id="fileInput" class="m-auto bg-lightblue p-4" type="file" accept="image/*" name="image_url">
                    <img id="preview" class="hidden m-auto p-4 w-1/2" />
                </div>

            <!-- Title Input -->
                <div class="relativeblock mb-4 w-full">
                    <label for="title">Title</label>
                    <input id="title" class="m-auto p-4 w-full border border-black border-opacity-10 text-xl bg-notwhite tracking-wider focus:placeholder-none duration-500" type="text" name="title" value="{{ $blog->title }}" required>
                </div>

            <!-- Blog Content Text -->
                <div class="relativeblock mb-4 w-full">
                    <label for="Content">Content</label>
                    <textarea name="content" id="content" class="w-full h-60 border p-4 text-xl" required>{!! $blog->content !!}</textarea>
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

<script src="/tinymce/tinymce.min.js"></script>


<script>

    tinymce.init({
        selector: '#content',
        plugins: 'lists link image code',
        toolbar: 'fontsize forecolor backcolor | bold italic underline | bullist numlist | link image code',
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