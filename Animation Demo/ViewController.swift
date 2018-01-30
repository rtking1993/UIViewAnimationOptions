import UIKit

// MARK: RaceViewController

class RaceViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet weak var raceButton: UIButton!
    @IBOutlet weak var raceView: UIView!
    @IBOutlet weak var purpleCar: UIImageView!
    @IBOutlet weak var greyCar: UIImageView!
    @IBOutlet weak var yellowCar: UIImageView!
    @IBOutlet weak var purpleCarTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var greyCarTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var yellowCarTopConstraint: NSLayoutConstraint!


    // MARK: Constants

    let duration = 4.0   // Duration of the animation
    let delay = 0.0      // Delay of the animation
    let carHeight = 100  // Height of the race cars

    // MARK: Action Methods

    @IBAction func startRace(button: UIButton) {
        let distance = raceView.frame.height - CGFloat(carHeight + 20)
        self.view.layoutIfNeeded()
        
        // Purple car
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseIn, animations: {
            self.purpleCarTopConstraint.constant = distance
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        // Grey car
        UIView.animate(withDuration: duration, delay: delay, animations: {
            self.greyCarTopConstraint.constant = distance
            self.view.layoutIfNeeded()
        }, completion: nil)
        
        // Yellow car
        UIView.animate(withDuration: duration, delay: delay, options: .curveEaseOut, animations: {
            self.yellowCarTopConstraint.constant = distance
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
}

