import UIKit

let config = URLSessionConfiguration.default
let session = URLSession(configuration: config)

//URL
var urlComponents = URLComponents(string: "https://itunes.apple.com/search?")!
let mediaQuery = URLQueryItem(name: "media", value: "music")
let entityQuery = URLQueryItem(name: "entity", value: "song")
let termQuery = URLQueryItem(name: "term", value: "지드래곤")

urlComponents.queryItems?.append(mediaQuery)
urlComponents.queryItems?.append(entityQuery)
urlComponents.queryItems?.append(termQuery)
let requestURL = urlComponents.url!

struct Response : Codable{
    let resultCount : Int
    let tracks : [Track]
    
    enum CodingKeys: String, CodingKey {
        case resultCount
        case tracks = "results"
    }
}

struct Track : Codable {
    let title : String
    let artistName : String
    let thumbnailPath: String
    
    enum CodingKeys: String, CodingKey {
        case title = "trackName"
        case artistName
        case thumbnailPath = "artworkUrl30"
    }
    //trackName
    //artistName
    //artworkUrl30
}



let dataTask = session.dataTask(with: requestURL) {(data, response,error) in
    guard error == nil else {return}
    
    guard let statusCode = (response as? HTTPURLResponse)?.statusCode else {return}
    let successRange = 200..<300
    
    guard successRange.contains(statusCode) else {
        //response error handle
        return
    }
    guard let resultData = data else {return}
    let resultString = String(data: resultData, encoding: .utf8)
    
    //파싱 및 트랙 가져오기
    do {
        let decoder = JSONDecoder()
        let response = try decoder.decode(Response.self, from:resultData)
        let tracks = response.tracks
        
        print("---> num tracks: \(tracks.count) - \(tracks.last?.title), \(tracks.last?.thumbnailPath)")
    } catch let error{
        print("--> \(error.localizedDescription)")
        
    }
//    print("--> result: \(resultString)")
}

dataTask.resume()
