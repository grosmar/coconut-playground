package;
import coconut.data.Model;

class HelloModel implements Model
{
    @:observable public var status:String;

    @:transition public function test()
    {
        return @patch {status:"hello"};
    }

    @:transition public function world()
    {
        return @patch {status:"hello"};
    }
}

