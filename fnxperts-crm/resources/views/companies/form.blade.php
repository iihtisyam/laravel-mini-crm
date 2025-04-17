<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Name</label>
    <input type="text" name="name" value="{{ old('name', $company->name ?? '') }}"
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Email</label>
    <input type="email" name="email" value="{{ old('email', $company->email ?? '') }}"
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Logo</label>
    <input type="file" name="logo"
        class="mt-1 block w-full text-sm text-gray-500 file:mr-4 file:py-2 file:px-4
               file:rounded file:border-0 file:text-sm file:font-semibold
               file:bg-blue-50 file:text-blue-700 hover:file:bg-blue-100" />
    @if (!empty($company->logo))
        <img src="{{ asset('storage/' . $company->logo) }}" width="100" class="mt-2 rounded shadow">
    @endif
</div>

<div class="mb-4">
    <label class="block text-sm font-medium text-gray-700">Website</label>
    <input type="url" name="website" value="{{ old('website', $company->website ?? '') }}"
        class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
</div>
