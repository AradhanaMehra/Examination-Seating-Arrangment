
import UIKit

let image = UIImage(named: "sample")//ORIGINAL IMAGE

// Process the image!
var myRGBA = RGBAImage(image:image!)!

let x=10
let y=10

let index = y * myRGBA.width + x
var pixel = myRGBA.pixels[index]

//FUNCTION 1 TO MAKE IMAGE BRIGHTER
func imageBrighterFilter(inputImage: UIImage,a: Int,b: Int,c: Int) -> UIImage{

                pixel.red = 255
                pixel.green = 0
                pixel.blue = 0
                myRGBA.pixels[index] = pixel
                myRGBA.toUIImage()

                var totalRed = 0
                var totalGreen = 0
                var totalBlue = 0

                for y in 0..<myRGBA.height {
                    for x in 0..<myRGBA.width {
                        let i = y * myRGBA.width + x
                        let pix = myRGBA.pixels[i]
                    
                        totalRed += Int(pix.red)
                        totalGreen += Int(pix.green)
                        totalBlue += Int(pix.blue)
                    }
                }
                let count = myRGBA.width * myRGBA.height
                let meanRed = totalRed / count
                let meanGreen = totalGreen / count
                let meanBlue = totalBlue / count

                for y in 0..<myRGBA.height {
                    for x in 0..<myRGBA.width {
                        let i = y * myRGBA.width + x
                        var pix = myRGBA.pixels[i]
                    
                        let greenDiff = Int(pix.green) - meanGreen
                        let blueDiff = Int(pix.blue) - meanBlue
                        let redDiff = Int(pix.red) - meanRed
                        if(greenDiff>0){ //checking whether the difference is greater than 0
                            pix.green = UInt8(max(0, min(255, meanGreen+greenDiff*a)))//amplifying the green pixels * 2
                            myRGBA.pixels[i] = pix
                        }
                        if(blueDiff>0){ //checking whether the difference is greater than 0
                            pix.blue = UInt8(max(0, min(255, meanBlue+blueDiff*b)))//amplifying the green pixels * 3
                            myRGBA.pixels[i] = pix
                        }
                        if(redDiff>0){ //checking whether the difference is greater than 0
                            pix.red = UInt8(max(0, min(255, meanRed+redDiff*c)))//amplifying the green pixels * 6
                            myRGBA.pixels[i] = pix
                        }
                        
                    }
                }


            return (myRGBA.toUIImage()!)
}


//FUNCTION 2 TO BLUR IMAGE
    
func simpleBlurFilter(inputImage: UIImage) -> UIImage {
    
    let inputCIImage = CIImage(image: inputImage)!
    let blurFilter = CIFilter(name: "CIGaussianBlur")!
    blurFilter.setValue(inputCIImage, forKey: kCIInputImageKey)
    blurFilter.setValue(1, forKey: kCIInputRadiusKey)
    let outputImage = blurFilter.outputImage!
    return UIImage(ciImage: outputImage)
}



//CALLING THE FUNCTIONS
let brightImage=imageBrighterFilter(inputImage: image!,a: 2,b: 3,c: 6)//CALL THIS FUNCTION TO MAKE IMAGE BRIGHTER
let blurImage = simpleBlurFilter(inputImage: image!)//CALL THIS FUNCTION TO BLUR IMAGE


