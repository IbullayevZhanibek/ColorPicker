import UIKit

final class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var colorDashboardView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    // MARK: - Load screen
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 15/255, green: 77/255, blue: 151/255, alpha: 1.0)
        setUpColorLabel()
        setUpColorValueLabel()
    }
    
    override func viewWillLayoutSubviews() {
        colorDashboardView.layer.cornerRadius = 20
    }
    
    // MARK: - Slider Actions
    
    @IBAction func redSliderDidUsed() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        changeViewColor()
    }
    
    @IBAction func greenSliderDidUsed() {
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        changeViewColor()
    }
    
    @IBAction func blueSliderDidUsed() {
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        changeViewColor()
    }
    
    // MARK: - Set up colors and labels
    
    private func setUpColorLabel() {
        redLabel.text = "Red:"
        greenLabel.text = "Green:"
        blueLabel.text = "Blue:"
    }
    
    private func setUpColorValueLabel() {
        redValueLabel.text = redSlider.value.formatted()
        greenValueLabel.text = greenSlider.value.formatted()
        blueValueLabel.text = blueSlider.value.formatted()
    }

    
    private func changeViewColor() {
        colorDashboardView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }

}

