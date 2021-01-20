//
//  ViewController.swift
//  Replica IMDb
//
//  Created by Harshad Sahu on 18/01/21.
//

import UIKit

class ViewController:  UIViewController, UICollectionViewDelegate, UICollectionViewDataSource
{
    //MARK: Outlet Connections
    @IBOutlet weak var trailerCollectionView: UICollectionView!
    @IBOutlet weak var featureCollectionView: UICollectionView!
    @IBOutlet weak var fansCollectionView: UICollectionView!
    @IBOutlet weak var exploreCollectionView: UICollectionView!
    @IBOutlet weak var segments: UISegmentedControl!
    @IBOutlet weak var bornToday: UICollectionView!
    
    
    //MARK: Declaration
    var trailerArray = [UIImage(named: "21"), UIImage(named: "22"), UIImage(named: "23"), UIImage(named: "24"), UIImage(named: "25"), UIImage(named: "26"), UIImage(named: "27"), UIImage(named: "28"), UIImage(named: "29"), UIImage(named: "30")]
    
    
    var featureTodayArray = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3"), UIImage(named: "4"), UIImage(named: "5"), UIImage(named: "6"), UIImage(named: "7"), UIImage(named: "8"), UIImage(named: "9"), UIImage(named: "10")]
    
    var featureLabel = ["Meet the 'LUPIN' Cast", "Meet One Night in Miami Cast", "Photos We Love", "Latest Posters", "Celebrity Twins", "Throwback 'Sex & the City'", "TV Tracker: SHOWS", "New on Netflix India", "Watch Latest Movies", "Quick Shots"]

    
   var fanMoviesArray = [UIImage(named: "11"), UIImage(named: "12"), UIImage(named: "13"), UIImage(named: "14"), UIImage(named: "15"), UIImage(named: "16"), UIImage(named: "17"), UIImage(named: "18"), UIImage(named: "19"), UIImage(named: "20")]
    
    var fanRating = ["⭐️7.9", "⭐️8.1", "⭐️7.5", "⭐️7.4", "⭐️7.8", "⭐️9.5", "⭐️8.6", "⭐️8.4", "⭐️9.3", "⭐️8.8"]
   
       var fanMovieName = ["Master", "Soul", "Tenet", "Bridgerton", "Lupin", "Breaking Bad", "Interstellar", "Avengers Endgame", "The Shawshank Redemption", "The Mandolorian"]
   
       var yearFan = [ "2021 NR 2h 59m", "2020 PG 1h 40m", "2020 PG 2h 30m", "2020 8eps", "2021 7ep", "2008-13 62eps", "2014 2h 40m", "2019 3h 10m", "1994 R 2h 22m", "2019 24 eps"]
    
    

    var primeMovieArray = [UIImage(named: "31"), UIImage(named: "32"), UIImage(named: "33"), UIImage(named: "34"), UIImage(named: "35"), UIImage(named: "36")]
    var primeRating = ["⭐️8.9", "⭐️7.1", "⭐️8.5", "⭐️6.4", "⭐️8.8", "⭐️9.5"]
    var primeMovieName = ["Mirzapur", "Mirzapur 2", "The Family Man", "The Night in Miami", "Birds of Prey", "Jack Ryan"]
    var primeYear = [ "2021 NR 2h 59m", "2020 PG 1h 40m", "2020 PG 2h 30m", "2020 8eps", "2021 7ep", "2008-13 62eps"]
    
    
    
    var HotstarMovieArray = [UIImage(named: "41"), UIImage(named: "42"), UIImage(named: "43"), UIImage(named: "44"), UIImage(named: "45"), UIImage(named: "46")]
    var hotstarRating = ["⭐️7.9", "⭐️8.1", "⭐️7.5", "⭐️7.4", "⭐️7.8", "⭐️9.5"]
    var hotstarMovieName = ["Hostage", "Criminal Justice", "Special Ops", "Aarya", "Dil Bechara", "Laxmii"]
    var hotstarYear = [ "2021 NR 2h 59m", "2020 PG 1h 40m", "2020 PG 2h 30m", "2020 8eps", "2021 7ep", "2008-13 62eps"]
    
    
    
    var vootMovieArray = [UIImage(named: "51"), UIImage(named: "52"), UIImage(named: "53"), UIImage(named: "54"), UIImage(named: "55"), UIImage(named: "56")]
    var vootRating = ["⭐️8.1", "⭐️6.1", "⭐️7.5", "⭐️7.4", "⭐️7.8", "⭐️9.0"]
    var vootMovieName = ["Asur", "Bigg Boss", "Bajirao Mastani", "Baywatch", "The Office", "Broad City"]
    var vootYear = [ "2021 NR 2h 59m", "2020 PG 1h 40m", "2020 PG 2h 30m", "2020 8eps", "2021 7ep", "2008-13 62eps"]
    
    
    
    var MXPlayerMovieArray = [UIImage(named: "61"), UIImage(named: "62"), UIImage(named: "63"), UIImage(named: "64"), UIImage(named: "65"), UIImage(named: "66")]
    var mxPlayerRating = ["⭐️8.9", "⭐️6.1", "⭐️7.5", "⭐️6.4", "⭐️7.8", "⭐️8.5"]
    var mxPlayerMovieName = ["Aashram", "Aashram 2", "The Expandables 2", "Crank", "The Mechanic", "Drive"]
    var mxPlayerYear = [ "2021 NR 2h 59m", "2020 PG 1h 40m", "2020 PG 2h 30m", "2020 8eps", "2021 7ep", "2008-13 62eps"]
    
    var bornArray = [UIImage(named: "71"), UIImage(named: "72"), UIImage(named: "73"), UIImage(named: "74"), UIImage(named: "75"), UIImage(named: "76"), UIImage(named: "77"), UIImage(named: "78"), UIImage(named: "79"), UIImage(named: "80")]
    
    var celebNames = ["Logan Lerman", "Katey Sagal", "Drea de Matteo", "Luke Macfarlane", "Mickey Sumner", "Dolly Parton","Jodie Sweetin" , "Rob Delaney", "Paul McCrane", "Rachel Luttrell"]
    var age = ["29", "67", "49", "41", "37", "75", "39", "44", "60", "50"]
    
    var timer = Timer()
    var counter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // this function will help us in order to achieve auto scrolling.
        DispatchQueue.main.async
        {
            self.timer = Timer.scheduledTimer(timeInterval: 2.5 , target: self, selector: #selector(self.changeImage), userInfo: nil, repeats: true)
        }
    }
    
    //Function which we be called in viewDidLoad() by Timer.scheduledTImer() to iterate over
    @objc func changeImage()
     {
         if (counter < trailerArray.count){
             let index = IndexPath.init(item: counter, section: 0)
             self.trailerCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
             counter += 1
         }
         else{
             counter = 0
             let index = IndexPath.init(item: counter, section: 0)
             self.trailerCollectionView.scrollToItem(at: index, at: .centeredHorizontally, animated: true)
            // counter += 1
         }
     }
    
    //MARK: Mandatory Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == exploreCollectionView
        {
            return 6
        }
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == featureCollectionView
        {
            
            let cell1 = featureCollectionView.dequeueReusableCell(withReuseIdentifier: "FeatureCollectionViewCell", for: indexPath) as! FeatureCollectionViewCell
            
            cell1.featureImage.image = featureTodayArray[indexPath.row]
            cell1.featureLabel.text = featureLabel[indexPath.row]
            
            return cell1
        }
        
        if collectionView == fansCollectionView
        {
            
            let cell2 = fansCollectionView.dequeueReusableCell(withReuseIdentifier: "BasicCollectionViewCell", for: indexPath) as! BasicCollectionViewCell
            
            cell2.fanImage.image = fanMoviesArray[indexPath.row]
            cell2.fanRating.text = fanRating[indexPath.row]
            cell2.fanMovie.text = fanMovieName[indexPath.row]
            cell2.fanYear.text = yearFan[indexPath.row]
            
            return cell2
        }
        
        if collectionView == exploreCollectionView
        {
            let cell = exploreCollectionView.dequeueReusableCell(withReuseIdentifier: "ExploreCollectionViewCell", for: indexPath) as! ExploreCollectionViewCell
            
            switch segments.selectedSegmentIndex {
            case 0:
                cell.expImages.image = primeMovieArray[indexPath.row]
                cell.expRating.text = primeRating[indexPath.row]
                cell.expMovieName.text = primeMovieName[indexPath.row]
                cell.expYear.text = primeYear[indexPath.row]
            case 1:
                cell.expImages.image = HotstarMovieArray[indexPath.row]
                cell.expRating.text = hotstarRating[indexPath.row]
                cell.expMovieName.text = hotstarMovieName[indexPath.row]
                cell.expYear.text = hotstarYear[indexPath.row]
            case 2:
                cell.expImages.image = vootMovieArray[indexPath.row]
                cell.expRating.text = vootRating[indexPath.row]
                cell.expMovieName.text = vootMovieName[indexPath.row]
                cell.expYear.text = vootYear[indexPath.row]
            case 3:
                cell.expImages.image = MXPlayerMovieArray[indexPath.row]
                cell.expRating.text = mxPlayerRating[indexPath.row]
                cell.expMovieName.text = mxPlayerMovieName[indexPath.row]
                cell.expYear.text = mxPlayerYear[indexPath.row]
            default:
                break
            }
            
            return cell
        }
        
        if collectionView == bornToday{
            
            let cell = bornToday.dequeueReusableCell(withReuseIdentifier: "BornCollectionViewCell", for: indexPath) as! BornCollectionViewCell
            
            cell.bornImages.image = bornArray[indexPath.row]
            cell.bornName.text = celebNames[indexPath.row]
            cell.bornAge.text = age[indexPath.row]
            
            return cell
        }
        
        let cell = trailerCollectionView.dequeueReusableCell(withReuseIdentifier: "TrailerCollectionViewCell", for: indexPath) as! TrailerCollectionViewCell
        
        cell.trailer.image = trailerArray[indexPath.row]
        return cell
        
    }
   
    //This is IBOutlet Action of segmented control which is responsible to reload data everytime when we switch the tabs of segmented controls
    @IBAction func segmentedSelection(_ sender: UISegmentedControl) {
        exploreCollectionView.reloadData()
    }
    

}

