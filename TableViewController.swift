//
//  TableViewController.swift
//
//
//  Created by Amey Dagaria on 2/05/16.


import UIKit
import LocalAuthentication


class TableViewController: UITableViewController{
    
    let searchcontroller = UISearchController(searchResultsController: nil)
    
    var WordArray:[Word] = [Word]()
    var FilteredWords:[Word] = [Word]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchcontroller.searchBar.scopeButtonTitles = ["All", "Easy", "Moderate", "Hard"]
        searchcontroller.searchBar.delegate = self
        
        
        searchcontroller.searchResultsUpdater = self
        searchcontroller.dimsBackgroundDuringPresentation = false
        definesPresentationContext = true
        tableView.tableHeaderView = searchcontroller.searchBar
        
        
        let Word1 = Word(imageName: "abberant.png", description: "ABBERANT", moreInfo: "Meaning :- Departing from an accepted standard .                                Synonymous:- Anomalous,Delirious      " ,level:"Easy")
        let Word2 = Word(imageName: "abide.png", description: "ABIDE", moreInfo: "accept or act in accordance with (a rule, decision, or recommendation).",level:"Moderate")
        let Word3 = Word(imageName: "abjure.png", description: "ABJURE", moreInfo: "solemnly renounce (a belief, cause, or claim).",level:"Hard" )
        let Word4 = Word(imageName: "acclaim.png", description: "ACCLAIM", moreInfo: "praise enthusiastically and publicly..",level:"Easy" )
        let Word5 = Word(imageName: "acquaint.png", description: "ACQUAINT", moreInfo: "make someone aware of or familiar with.",level:"Hard" )
        
        WordArray.append(Word1)
        WordArray.append(Word2)
        WordArray.append(Word3)
        WordArray.append(Word4)
        WordArray.append(Word5)
        
        
    }
    override func prepareForSegue(segue: (UIStoryboardSegue!), sender: AnyObject!)
        
    {
        if segue.identifier == "showDetail"
        {
            if let indexPath = self.tableView.indexPathForSelectedRow{
                
                let WordDetail: Word
                if searchcontroller.active && searchcontroller.searchBar.text != ""
                    
                {
                    WordDetail = FilteredWords[indexPath.row]
                    
                    
                }
                else {
                    
                    WordDetail = WordArray[indexPath.row]
                }
                let controller = (segue.destinationViewController as! UINavigationController).topViewController as! DetailViewcontroller
                
                controller.WordDetail = WordDetail
                controller.navigationItem.leftBarButtonItem = self.splitViewController?.displayModeButtonItem()
                controller.navigationItem.leftItemsSupplementBackButton = true
                
                
                
            }
            
            
        }
        
        
    }
    
    
    func filterContentForSearchText (searchText: String, scope: String = "All") {
        
        FilteredWords = WordArray.filter({ (Word) in
            let categoryMatch = (scope == "All") || (Word.level == scope)
            return  categoryMatch && Word.imageName.lowercaseString.containsString(searchText.lowercaseString)
            
            
            //return Word.imageName.lowercaseString.containsString(searchText.lowercaseString)
        })
        
        tableView.reloadData()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        if searchcontroller.active && searchcontroller.searchBar.text != ""
        {
            return FilteredWords.count
            
        }
        
        return WordArray.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! myCell
        let word: Word
        
        if searchcontroller.active && searchcontroller.searchBar.text != ""
        {
            
            word = FilteredWords [indexPath.row]
        }
        else
        {
            word = WordArray [indexPath.row]
            
            
        }
        
        cell.myImageView?.image = UIImage(named: word.imageName)
        cell.myLabel?.text = word.description
        
        
        return cell
        
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        let wordSelected = WordArray[indexPath.row]
        let detailVC:DetailViewcontroller = self.storyboard?.instantiateViewControllerWithIdentifier("DetailViewController") as! DetailViewcontroller
        
        detailVC.imageDetail = wordSelected.imageName
        detailVC.descriptionLabel = wordSelected.description
        detailVC.moreInfoDetail = wordSelected.moreInfo
        
        self.presentViewController(detailVC, animated: true, completion: nil)
    }
    
}

extension TableViewController: UISearchBarDelegate {
    func searchBar(searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        filterContentForSearchText(searchBar.text!, scope: searchBar.scopeButtonTitles![selectedScope])
    }
}

extension TableViewController: UISearchResultsUpdating
{
    
    
    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let searchBar = searchController.searchBar
        let scope = searchBar.scopeButtonTitles![searchBar.selectedScopeButtonIndex]
        filterContentForSearchText(searchController.searchBar.text!, scope: scope)
        
        
        //filterContentForSearchText(searchcontroller.searchBar.text!)
        
        
    }
    
    
    
    
    
}







