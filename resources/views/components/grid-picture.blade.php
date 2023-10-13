<div {{ $attributes->merge(
        ['class' => 'grid grid-cols-4 gap-4 xl:grid-cols-5 
                    lg:grid-cols-4 md:grid-cols-3 sm:grid-cols-2 
                    sm:mx-4 md:mx-14 max-[640px]:grid-cols-1
                    
                    '
        ]) }}
        >

    {{ $slot }}
</div>