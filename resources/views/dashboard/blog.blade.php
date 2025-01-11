@include('partials.head')

@include('partials.nav')

<div class="flex w-full py-12 px-2">
    <div class="m-auto w-3/4 h-auto">
        <!-- Image upload -->
            <div class="flex justify-center items-center w-full p-4">
                <img src="{{ asset('images/kingland/sample1.jpg') }}" class="mx-auto w-1/2 shadow-xl">
            </div>
        <!-- blog editor container -->
            <form>
                <div id="editor" class="p-2">
                    <p>Hello World!</p>
                    <p>Some initial <strong>bold</strong> text</p>
                    <p><br /></p>
                </div>
            </form>
    </div>
</div>

<!-- Include the Quill library -->
<script src="https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
  const quill = new Quill('#editor', {
    theme: 'snow'
  });
</script>