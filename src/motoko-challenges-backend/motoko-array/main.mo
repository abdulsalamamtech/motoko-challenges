import Debug "mo:base/Debug";


actor {


  let array_1 : [Text] = ["Motoko", "is", "a", "great", "language", "."];
  let array_2 : [Nat] = [05, 07, 2021];

  public func getArray1(arg : Nat) : async Text {
    return  array_1[arg];
  };
  public func getArray1Size() : async Nat {
    return  array_1.size();
  };

  public func getArray2(arg : Nat) : async Nat {
    return  array_2[arg];
  };
  public func getArray2Size() : async Nat {
    return  array_2.size();
  };

  public func getArray2Content() : async [Nat] {
    return  array_2;
  };


  stable var state = 0;
  public func name(arg : Nat) : async Nat {
    state := state + arg;
    return state;
  };



  let array : [Nat] = [1, 2, 3, 4, 5, 6, 7, 8];
  public func testArray() : async () {
    // for(i in Iter.range(0, count - 1)) {
      
    // };
    // for(item in collection.vals()) {
      
    // };
    for(item in array.vals()) {
      return Debug.print(debug_show (item));
    };
    
  };

};