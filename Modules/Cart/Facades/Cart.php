<?php

namespace Modules\Cart\Facades;

use Illuminate\Support\Facades\Facade;

/**
 * @method static \Modules\Cart\Cart store(int $productId, int $qty, array $options = [])
 * @method static \Modules\Cart\Cart instance()
 *
 * @see \Modules\Cart\Cart
 */
class Cart extends Facade
{
    /**
     * Get the registered name of the component.
     *
     * @return string
     */
    protected static function getFacadeAccessor()
    {
        return \Modules\Cart\Cart::class;
    }
}
