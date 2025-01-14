@include('partials.head')

@include('partials.nav')



<form action="/blog" method="POST" enctype="multipart/form-data">
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
                    <textarea name="content" id="content" class="w-full h-60 border p-4 text-xl" placeholder="Write your blog content here..." required></textarea>
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

<!-- Include the Quill library -->
<script src="https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.js"></script>

<script>
    
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