struct Article {
    let id: Int
    let title: String
    let body: String
    
    // 以下と同等のイニシャライザが自動的に定義される
    // init(id: Int, title: String, body: String) {
    //
    // }
}

let article = Article(id: 1, title: "Hello", body: "...")
article.id
article.title
article.body
