@foreach($items as $menu_item)

    <li class="nav-item {{ count($menu_item->children) > 0 ? 'hasmenu' : '' }}">
        <a class="nav-link" href="{{ $menu_item->link() }}">{{ $menu_item->title }}
        @if(count($menu_item->children) > 0)
        <i class="fa fa-caret-down" aria-hidden="true"></i>
        @endif
        </a>
        @if(count($menu_item->children) > 0)
            <ul>
                @foreach($menu_item->children as $child)
                <li class="nav-item ">
                <a class="nav-link" href="{{ $child->link() }}">{{ $child->title }}
                </a>
                </li>
                @endforeach
            </ul>
        @endif
    </li>
@endforeach
