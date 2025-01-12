@include('partials.head')

@include('partials.nav')

<form>
    <div class="flex w-full py-12 px-2">
        <div class="m-auto w-3/4 h-auto bg-red-200">
            <!-- Image upload -->
                <div class="flex">
                    <input class="m-auto bg-lightblue p-4" type="file" accept="image/*">
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
</form>

<!-- Include the Quill library -->
<script src="https://cdn.jsdelivr.net/npm/quill@2.0.3/dist/quill.js"></script>

<!-- Initialize Quill editor -->
<script>
  const quill = new Quill('#editor', {
    theme: 'snow'
  });
</script>