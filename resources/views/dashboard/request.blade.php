@include('partials.head')

@include('partials.nav')

<div class="flex w-full my-12 p-4">
    <div class="m-auto flex w-3/4 h-3/4 bg-notwhite rounded-lg p-4 border border-gray border-opacity-20 shadow-xl">
        <table class="table-auto w-full">
            <thead>
                <tr>
                    <th class="w-1/4 px-4 py-2">Name</th>
                    <th class="w-1/4 px-4 py-2">Email</th>
                    <th class="w-1/4 px-4 py-2">Email Verified At</th>
                    <th class="w-1/4 px-4 py-2">Action</th>
                </tr>
            </thead>
            <tbody>
                @foreach($requests as $user)
                    <tr>
                        <td class="text-center border px-4 py-2">{{ $user->name }}</td>
                        <td class="text-center border px-4 py-2">{{ $user->email }}</td>
                        <td class="text-center border px-4 py-2">{{ $user->email_verified_at }}</td>
                        <td class="text-center border px-4 py-2">
                            <form action="{{ route('users.admit', $user->id) }}" method="POST">
                                @csrf
                                @method('PUT')
                                <button class="mx-auto border bg-green-200 border-gray px-4 rounded-md">Admit</button>
                            </form>
                            <form action="{{ route('users.reject', $user->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button class="mx-auto border bg-red-400 border-gray px-4 rounded-md">Reject</button>
                            </form>

                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</div>


