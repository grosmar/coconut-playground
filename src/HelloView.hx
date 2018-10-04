package;

import coconut.ui.View;

class HelloView extends View
{
    @:attr var model:HelloModel;

    function render()
    '
        <div>${model.status}</div>
    ';
}