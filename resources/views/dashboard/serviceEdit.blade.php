@include('partials.head')

@include('partials.nav')


<form action="" method="POST" enctype="multipart/form-data">
    @csrf
    @method('PUT')
    <input type="hidden" value="{{$service->id}}" name="id">
    <div class="flex w-full py-12 px-2">
        <div class="m-auto w-3/4 h-auto">



            <!-- name Input -->
                <div class="relativeblock mb-4 w-full">
                    <label for="name">name</label>
                    <input id="name" class="m-auto p-4 w-full border border-black border-opacity-10 text-xl bg-notwhite tracking-wider focus:placeholder-none duration-500" type="text" name="name" value="{{ $service->name }}" required>
                </div>

            <!-- Blog descriptions Text -->
                <div class="relativeblock mb-4 w-full">
                    <label for="descriptions">descriptions</label>
                    <textarea name="descriptions" id="descriptions" class="w-full h-60 border p-4 text-xl" required>{!! $service->descriptions !!}</textarea>
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
        selector: '#descriptions',
        plugins: 'lists link image code',
        toolbar: 'fontsize forecolor backcolor | bold italic underline | bullist numlist | link image code',
        height: 300,
        skin: "oxide",
        descriptions_css: "default",
        icons: "default",
        license_key: 'gpl'  // Add this line to remove the evaluation mode warning
    });

</script>