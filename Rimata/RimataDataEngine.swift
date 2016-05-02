//
//  RimataDataEngine.swift
//
//  Created by Eric Van Berkel on 23-01-16.
//  Copyright © 2016 SaintBrigid. All rights reserved.
//

import Foundation

public class RimataDataEngine
{
    
public func contents() -> String
    {
        return "\(RimataBasePresent)"
    }
    
public func logRimata()
    {
    NSLog("%@", contents() )
    }
    
public func getRimataBasePresentAt( index: Int ) -> String
    {
        
    return RimataBasePresent[index]

    }
 
public func getRimataBasePastAt( index: Int ) -> String
    {
        
    return RimataBasePast[RimataBasePresent[index]]!
        
    }

    
public func getRimataBaseFutureAt( index: Int ) -> String
    {
        
        return RimataBaseFuture[RimataBasePresent[index]]!
        
    }

public func getRimataBasePresentTransAt( index: Int ) -> String
    {
    
    return RimataBasePresentTrans[RimataBasePresent[index]]!
    
    }
    

public func sort( ) -> Void
    {
        
    RimataBasePresent.sortInPlace()
    }
   
public func getRimataCount( ) -> Int
    {

    return RimataBasePresent.count

    }

// --
    
private var RimataBasePresent =
    [
        "είμαι",
        "έχω",
        "πηγαίνω",
        "παίρνω",
        "ακούω",
        "δίνω",
        "βγαίνω",
        "καταλαβαίνω",
        "τρέχω",
        "κοιμάμαι",
        "ξυπνάω",
        "κάθομαι",
    ]

private var RimataBasePresentTrans =
    [
        "είμαι":"zijn",
        "έχω":"hebben",
        "πηγαίνω":"gaan",
        "παίρνω":"nemen",
        "ακούω":"horen",
        "δίνω":"geven",
        "βγαίνω":"uitgaan",
        "καταλαβαίνω":"begrijpen",
        "τρέχω":"rennen",
        "κοιμάμαι":"slapen",
        "ξυπνάω":"ontwaken",
        "κάθομαι":"zitten",
    ]
    
private var RimataBasePast =
    [
        "είμαι":"ήμουν",
        "έχω":"είχα",
        "πηγαίνω":"πήγα",
        "παίρνω":"πήρα",
        "ακούω":"άκουσα",
        "δίνω":"έδωσα",
        "βγαίνω":"βγήκα",
        "καταλαβαίνω":"κατάλαβα",
        "τρέχω":"έτρεξα",
        "κοιμάμαι":"κοιμήθηκα",
        "ξυπνάω":"ξύπνησα",
        "κάθομαι":"κάθισα",
    ]

private var RimataBaseFuture =
    [
        "είμαι":"θα είμαι",
        "έχω":"θα έχω",
        "πηγαίνω":"Θα πάω",
        "παίρνω":"Θα πάρω",
        "ακούω":"Θα ακούσω",
        "δίνω":"Θα δώσω",
        "βγαίνω":"Θα πάω",
        "καταλαβαίνω":"Θα καταλάβω",
        "τρέχω":"Θα τρέξω",
        "κοιμάμαι":"Θα κοιμηθώ",
        "ξυπνάω":"Θα ξυπνήσω",
        "κάθομαι":"Θα καθίσω",
    ]



}

