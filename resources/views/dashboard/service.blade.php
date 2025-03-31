@include('partials.head')

@include('partials.nav')

<div class="m-auto w-3/4 bg-notwhite p-12 mt-12">
    <table class="min-w-full border-collapse border border-gray-300 mb-2">
        <thead>
            <tr>
                <th class="border border-gray px-6 py-4 text-center w-1/6">Service</th>
                <th class="border border-gray px-6 py-4 text-center w-5/6">Description</th>
                <th class="border border-gray px-6 py-4 text-center w-1/6">Actions</th>
            </tr>
        </thead>
        <tbody>
            @foreach($services as $service)
                <tr>
                    <td class="border border-gray px-6 py-4 text-center">
                        <p>{{ $service->name }}</p>
                    </td>
                    <td class="border border-gray px-6 py-4">
                        <p>{!! $service->descriptions !!}</p>
                    </td>
                    <td class="border border-gray px-6 py-4 text-center">
                        <div class="flex flex-wrap">
                            <a href="{{ route('service.edit', $service->id) }}" class="m-auto px-2 py-1 bg-lightblue text-white rounded">Edit</a>
                            <form action="" method="POST"class="m-auto">
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

</body>