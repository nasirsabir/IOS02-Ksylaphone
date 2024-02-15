import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        name = "C"
        playSound(var: name)
    }
    
    @IBAction func keyD(_ sender: UIButton) {
        name = "D"
        playSound(var: name)

    }
    
    @IBAction func keyE(_ sender: UIButton) {
        name = "E"
        playSound(var: name)
    }
    
    @IBAction func keyF(_ sender: UIButton) {
        name = "F"
        playSound(var: name)
    }
    
    @IBAction func keyG(_ sender: UIButton) {
        name = "G"
        playSound(var: name)
    }
    
    
    @IBAction func keyA(_ sender: Any) {
        name = "A"
        playSound(var: name)
    }
    
    @IBAction func keyB(_ sender: UIButton) {
        name = "B"
        playSound(var: name)
    }
    
    
    
    
    func playSound(`var` name: String) {
        let url = Bundle.main.url(forResource: name, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
