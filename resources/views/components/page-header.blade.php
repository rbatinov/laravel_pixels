@props(['headingLabel'])

<div class="p-2 md:mx-24 min-[320px]:mx-4 mt-4 text-center mb-8">
    <span class="text-4xl" 
        style="text-decoration: underline; color:var(--deep-purple); font-weight:bold;"
        >{{ __('labels.' . $headingLabel) }}</span>
</div>