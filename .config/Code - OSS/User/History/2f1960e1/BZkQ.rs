fn main() {
    let string: String= String::from("127.0.0.1.8080");
    let string_slice: &str = &string[10..];
    let string_borrow: &str = &string;
    let string_literal = "1234";

    dbg!(&string);
    dbg!(string_slice);
   //let server = Server::new("127.0.0.1:8080");
   //server.run();

}
struct Server{
    addr: String,
}

impl Server{ //definisce cosa può fare un oggetto di tipo Server
    fn new(addr: String) -> Self{
        Self {
            addr: addr
        }
    }
    fn run(self){

    }
}
