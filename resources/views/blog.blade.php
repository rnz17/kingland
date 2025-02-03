@include('partials.head')

@include('partials.nav')

<!-- blog.blade.php -->
<div class="flex flex-col px-4 py-24 md:px-64 w-full text-center bg-notwhite">
    <h1 class="m-auto text-2xl md:text-4xl leading-relaxed text-textblue font-bold mb-16 tracking-wider">{{ $title }}</h1>
    @if($image_url)
    <img src="{{ asset('storage/' . $image_url) }}" alt="Blog Image" class="m-auto w-1/2 rounded-xl border border-gray mb-16 shadow-xl">
    @endif
    <div class="m-auto text-justify w-3/4 tracking-wide leading-loose text-lg whitespace-pre-line">
        {!! $content !!}
    </div>
</div>

@include('partials.footer')