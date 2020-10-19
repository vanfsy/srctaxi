@if ($paginator->hasPages())
    <div class="interview-article-pagination-ialp">
        <ul class="interview-article-listing-ialp">
            <li class="left-right-prev-next"><a href="{{ $paginator->toArray()['first_page_url'] }}"><i class="fas fa-chevron-left"></i></a></li>
            <li class="left-right-prev-next"><a href="{{ $paginator->previousPageUrl() }}">前へ</a></li>
            @for ($i = 1; $i <= $paginator->lastPage(); $i++)
                @if($paginator->currentPage() == $i)
                    <li class="active"><a href="{{ $paginator->url($i) }}">{{ $i }}</a></li>
                @else
                    <li><a href="{{ $paginator->url($i) }}">{{ $i }}</a></li>
                @endif
            @endfor
            <li class="left-right-prev-next"><a href="{{ $paginator->nextPageUrl() }}">次へ</a></li>
            <li class="left-right-prev-next"><a href="{{ $paginator->toArray()['last_page_url'] }}"><i class="fas fa-chevron-right"></i></a></li>
        </ul>
    </div>
@endif
