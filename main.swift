
//let unsortedWords = ["dino", "cowboy", "baby", "ant"]

var words = [String]()

while let line = readLine() {
     if (line.count == 0) {break;}
    words.append(line)
}

for i in 1..<words.count {
    let currWord = words[i]
    var prevNo = i - 1 

    while prevNo >= 0 && currWord.lowercased() < words[prevNo].lowercased() {
        words[prevNo+1] = words[prevNo] 
        prevNo -= 1
    }
    words[prevNo+1] = currWord
}

print(words)
