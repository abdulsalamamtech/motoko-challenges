import HashMap "mo:base/HashMap";
import Text "mo:base/Text";
import Time "mo:base/Time";
// import Int "mo:base/Int";
import Principal "mo:base/Principal";
import Result "mo:base/Result";


// dfx identity get-principal 
// jrqx4-vxxcb-us7f3-3lfks-idecp-l5nem-w6f4f-e3hkc-a6dy3-y5b4w-7ae

// dfx canister call canister-name create_profile '(record 
// {name = "amtech"; email = "amtech@mail.com"; password : "secretpassword"})'


actor {

  // type Time = Int;
  // let now : () -> Time;

  public type Time = Time.Time;
  

  type Profile = {
    name : Text;
    email : Text;
    password : Text;
    is_admin : Bool;
    created_at : Time;
    updated_at : Time;
  };

  type Post = {
    title : Text;
    content : Text;
    created_at : Time;
    updated_at : Time;
  };
  

  let Users : HashMap.HashMap<Principal, Profile> = HashMap.HashMap<Principal, Profile>(0, Principal.equal, Principal.hash);
  

  // Create
  public shared ({caller}) func create_profile(user : Profile) : async () {
    Users.put(caller, user);
    return;
  };

  // Read
  public query func read_profile(principal : Principal) : async (?Profile) {
    return Users.get(principal);
  };

  // Update
  public shared ({caller}) func update_profile(user : Profile) : async Result.Result<Text, Text> {
    switch(Users.get(caller)) {
      case(null) { 
        return #err("user not found! : " # Principal.toText(caller));
      };
      case(?user) {
        Users.put(caller, user);
        return #ok("user found! : " # Principal.toText(caller));
      };
    };
  };
  
  // Delete
  public shared({caller}) func delete_profile(principal : Principal) : async Result.Result<(), Text> {
    assert(caller == principal);
    switch(Users.remove(principal)) {
      case(null) { return #err("user not found! : ")};
      case(?principal) {
        return #ok();
      };
    };
  };






  public query func greet(name : Text) : async Text {
    return "Hello, " # name # "!";
  };




};
