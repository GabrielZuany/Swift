import Foundation

struct API : Decodable, Hashable{
    var dataSource:DataSource?
    var cache:CacheData?
    var apiSourceCode:String?
    var summaryStats: SummaryStats?
    var rawData:[RawData]
}

struct CacheData : Decodable, Hashable{
    var lastUpdated:String?
    var expires:String?
    var lastUpdatedTimestamp:TimeInterval?
    var expiresTimestamp:TimeInterval?
}

struct DataSource : Decodable, Hashable{
    var url:String?
    var lastGithubCommit:String?
    var publishedBy:String?
    var ref:String?
}

struct SummaryStats : Decodable, Hashable{
    var global:Global?
    var china:China?
    var nonChina:NonChina?
}
struct Global : Decodable, Hashable{
    var confirmed:Int?
    var recovered:Int?
    var deaths:Int?
}
struct China : Decodable, Hashable{
    var confirmed:Int?
    var recovered:Int?
    var deaths:Int?
}
struct NonChina : Decodable, Hashable{
    var confirmed:Int?
    var recovered:Int?
    var deaths:Int?
}

struct RawData : Decodable, Hashable{
    var FIPS:String?
    var Admin2:String?
    var Province_State:String?
    var Country_Region:String?
    var Last_Update:String?
    var Lat:String?
    var Long_:String?
    var Confirmed:String?
    var Deaths:String?
    var Recovered:String?
    var Active:String?
    var Combined_Key:String?
    var Incident_Rate:String?
    var Case_Fatality_Ratio:String?
}
