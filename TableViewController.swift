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
        
        Touchid()
        
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
        
        let Word6=Word(imageName: "benevolent.jpg", description: "Benevolent", moreInfo: "Meaning :- well meaning and kindly .Synonymous:- kind, kindly, kind-hearted, warm-hearted, tender-hearted      " ,level:"Easy")
        let Word7 = Word(imageName: "Besiege.jpg ", description: " Besiege", moreInfo: "Meaning :- Departing surround (a place) with armed forces in order to capture it or force its surrender .Synonymous:- surround, mob, crowd round, swarm round      " ,level:"Easy")
        let Word8 = Word(imageName: "bestial.jpg", description: "Bestial", moreInfo: "Meaning :- of or like an animal or animals .Synonymous:- beast-like, animalistic " ,level:"Easy")
        let Word9 = Word(imageName: "blase.jpg", description: "blasé", moreInfo: "Meaning :- unimpressed with or indifferent to something because one has experienced or seen it so often before .Synonymous:- indifferent to, unconcerned about, uncaring about " ,level:"Hard")
        let Word10 = Word(imageName: "blatant.jpg", description: " blatant ", moreInfo: "Meaning :- (of bad behaviour) done openly and unashamedly .Synonymous:- lagrant, glaring, obvious, undisguised " ,level:"Hard")
        let Word11  = Word(imageName: "Bliss.jpg", description: "Bliss", moreInfo: "Meaning :- Departing perfect happiness and great joy .Synonymous:- joy, pleasure, delight, happiness " ,level:"Easy")
        let Word12 = Word(imageName: "brigand.jpg", description: " Brigand ", moreInfo: "Meaning :- a member of a gang that ambushes and robs people in forests and mountains .Synonymous:- " ,level:"Moderate")
        let Word13 = Word(imageName: "Buff.jpg", description: " buff ", moreInfo: "Meaning :- polish (something) .Synonymous:- polish, burnish, rub up, smooth, shine up " ,level:"Easy")
        let Word14 = Word(imageName: "Bulwark.jpg", description: " bulwark ", moreInfo: "Meaning :- a defensive wall .Synonymous:- wall, rampart, fortification, parapet " ,level:"Easy")
        let Word15 = Word(imageName: "Cabal.jpg", description: " cabal ", moreInfo: "Meaning a secret political clique or faction .Synonymous:- clique, faction, coterie, group " ,level:"Moderate")
        let Word16 = Word(imageName: "Cacophony.jpg", description: "Cacophony", moreInfo: "Meaning :- a harsh discordant mixture of sounds .Synonymous:- din, racket, noise, discord " ,level:"Easy")
        let Word17 = Word(imageName: "cadaver.jpg", description: " cadaver ", moreInfo: "Meaning :- a corpse .Synonymous:- " ,level:"Easy")
        let Word18 = Word(imageName: "cajole.jpg", description: " Cajole", moreInfo: "Meaning :- persuade (someone) to do something by sustained coaxing or flattery .Synonymous:-   persuade, wheedle, coax    " ,level:"Easy")
        let Word19 = Word(imageName: "calibre.jpg", description: " calibre ", moreInfo: "Meaning :- the quality of someone's character or the level of their ability .Synonymous:- quality, merit, distinction      " ,level:"Moderate")
        let Word20 = Word(imageName: "calumny.jpg", description: " Calumny ", moreInfo: "Meaning :- the making of false and defamatory statements about someone in order to damage their reputation .Synonymous:- slander, defamation (of character) " ,level:"Moderate")
        let Word21 = Word(imageName: "candor.png", description: " candor: ", moreInfo: "Meaning :- the quality of being open and honest .Synonymous:- frankness, openness, honesty, candidness   " ,level:"Easy")
        
        
        let Word22 = Word(imageName: "catnap.jpg", description: " catnap", moreInfo: "Meaning a short sleep during the day .Synonymous:- " ,level:"Easy")
        let Word23 = Word(imageName: "centaur.jpg", description: " Centaur ", moreInfo: "Meaning :- a creature with the head, arms, and torso of a man and the body and legs of a horse .Synonymous:-  " ,level:"Moderate")
        let Word24 = Word(imageName: "chagrin.jpg", description: " Chagrin ", moreInfo: "Meaning :- feel distressed or humiliated .Synonymous:- annoyance, irritation, vexation " ,level:"Hard")
        let Word25 = Word(imageName: "chicanery.jpg", description: " chicanery ", moreInfo: "Meaning :- the use of deception or subterfuge to achieve one's purpose .Synonymous:- trickery, deception, deceit " ,level:"Moderate")
        let Word26 = Word(imageName: "Clamorous.png", description: " Clamorous", moreInfo: "Meaning :- making a loud and confused noise .Synonymous:- noisy, loud, vocal, vociferous " ,level:"Moderate")
        let Word27 = Word(imageName: "clandestine.png", description: " Clandestine ", moreInfo: "Meaning kept secret or done secretively, especially because illicit .Synonymous:- secret, covert, furtive " ,level:"Moderate")
        let Word28 = Word(imageName: "cliche.png", description: " cliché ", moreInfo: "Meaning a phrase or opinion that is overused and betrays a lack of original thought .Synonymous:- platitude, hackneyed phrase " ,level:"Easy")
        let Word29 = Word(imageName: "cog.png", description: "Cog", moreInfo: "Meaning :- wheel or bar with a series of projections on its edge, which transfers motion by engaging with projections on another wheel or bar .Synonymous:- " ,level:"Moderate")
        let Word30 = Word(imageName: "cognizant.jpg", description: " cognizant: ", moreInfo: "Meaning :- having knowledge or awareness .Synonymous:- aware, conscious, apprised " ,level:"Easy")
        
        
        let Word31 = Word(imageName: "coiffure.png", description: " Coiffure ", moreInfo: "Meaning :- a person's hairstyle .Synonymous:- " ,level:"Easy")
        let Word32 = Word(imageName: "commodius1.jpg", description: "Commodious", moreInfo: "Meaning :- roomy and comfortable .Synonymous:- roomy, capacious, spacious " ,level:"Hard")
        let Word33 = Word(imageName: "Congenial.jpg", description: "Congenial", moreInfo: "Meaning :- (of a person) pleasing or liked on account of having qualities or interests that are similar to ones own .Synonymous:- pleasant" ,level:"Easy")
        let Word34 = Word(imageName: "Crave.jpg", description: "Crave", moreInfo: "Meaning :- eel a powerful desire for (something) .Synonymous:- long for, yearn for, hunger for, thirst for, dream of" ,level:"Easy")
        let Word35 = Word(imageName: "cur.gif", description: "Cur", moreInfo: "Meaning :- an aggressive or unkempt dog especially a mongrel .Synonymous:- " ,level:"Hard")
        let Word365 = Word(imageName: "dapper.gif", description: "Dapper", moreInfo: "Meaning :- of a man) neat and trim in dress and appearance .Synonymous:- smart, spruce, trim, debonair " ,level:"Moderate")
        let Word36 = Word(imageName: "debilitate.png", description: "Debilitate", moreInfo: "Meaning :- make someone very weak and infirm .Synonymous:- weakening, enfeebling, enervating" ,level:"Easy")
        let Word37 = Word(imageName: "decorum.jpg", description: "Decorum", moreInfo: "Meaning :- behaviour in keeping with good taste and propriety .Synonymous:- propriety, properness, seemliness, decency, decorousness, good taste, correctness, appropriateness" ,level:"Easy")
        let Word38 = Word(imageName: "deference.jpeg", description: "Deference", moreInfo: "Meaning :- respectful or courteous regard .Synonymous:- respect, respectfulness, regard, esteem; consideration, attentiveness, attention, thoughtfulness; courteousness, courtesy, politeness" ,level:"Medium")
        let Word39 = Word(imageName: "delineate.jpg", description: " Delineate ", moreInfo: "Meaning:describe or portray (something) precisely. .Synonymous:- describe, set forth, set out, present, outline, depict, portray, represent " ,level:"Hard")
        
        let Word398 = Word(imageName: "demotic.png", description: " Demotic ", moreInfo: "Meaning :- denoting or relating to the kind of language used by ordinary people .Synonymous:- popular; vernacular, colloquial, idiomatic" ,level:"Hard")
        let Word40 = Word(imageName: "demur.jpg", description: "Demur", moreInfo: "Meaning :- raise objections or show reluctance..Synonymous:-raise objections, object, take exception, take issue, protest, lodge a protest" ,level:"Hard")
        let Word41 = Word(imageName: "denigrate.jpg", description: "Denigrate", moreInfo: "Meaning :- criticize unfairly; disparage..Synonymous: - : disparage, belittle, diminish, deprecate, cast aspersions on, decry, criticize unfairly" ,level:"Hard")
        let Word42 = Word(imageName: "denouement.jpg", description: "Denouement", moreInfo: "Meaning :- the final part of a play, film, or narrative in which the strands of the plot are drawn together and matters are explained or resolved..Synonymous:- : finale, final scene, final act, last act, epilogue, coda, end, ending, finish, close" ,level:"Hard")
        let Word43 = Word(imageName:"desiccate.jpg",description:"Desiccate", moreInfo: "Meaning :- remove the moisture from (something), typically in order to preserve it .Synonymous:- : dried, dried up, dry, dehydrated, powdered" ,level:"Hard")
        let Word44 = Word(imageName: "desultory.jpg", description: "Desultory", moreInfo: "Meaning :- lacking a plan, purpose, or enthusiasm .Synonymous:- : half-hearted, lukewarm, cursory, superficial, token, perfunctory, passing" ,level:"Hard")
        let Word45 = Word(imageName: "diatribe.jpg", description: "Diatribe", moreInfo: "Meaning :- a forceful and bitter verbal attack against someone or something .Synonymous:- : tirade, harangue, verbal onslaught, verbal attack, stream of abuse, denunciation, broadside, fulmination, condemnation, criticism" ,level:"Hard")
        let Word46 = Word(imageName: "dichotomy.jpg", description: "Dichotomy", moreInfo: "Meaning :- a division or contrast between two things that are or are represented as being opposed or entirely different..Synonymous:- : division, separation, divorce, split, gulf, chasm, difference, contrast, disjunction" ,level:"Hard")
        let Word47 = Word(imageName: "diffidence.jpg", description: "Diffidence", moreInfo: "Meaning :- modesty or shyness resulting from a lack of self-confidence .Synonymous:- : shyness, bashfulness, unassertiveness" ,level:"Hard")
        let Word48 = Word(imageName: "diffuse.jpg", description: "Diffuse", moreInfo: "Meaning :- spread over a wide area or between a large number of people .Synonymous:- : spread, spread out, spread around, send out, scatter, disperse" ,level:"Easy")
        let Word49 = Word(imageName: "disabuse.jpg", description: "Disabuse", moreInfo: "Meaning :- persuade (someone) that an idea or belief is mistaken .Synonymous:- : disillusion, undeceive, correct, set right/straight, open the eyes of, enlighten, reveal the truth to" ,level:"Hard")
        let Word50 = Word(imageName: "discordant.jpg", description: "Discordant", moreInfo: "Meaning :- disagreeing or incongruous .Synonymous:- : in disagreement, at variance, at odds, disagreeing, differing, divergent, discrepant, contradictory, contrary, in conflict" ,level:"Medium")
        let Word51 = Word(imageName: "discrepancy.jpg", description: "Discrepancy", moreInfo: "Meaning :- an illogical or surprising lack of compatibility or similarity between two or more facts .Synonymous:- : inconsistency, difference, disparity, variance, variation, deviation, divergence, disagreement, dissimilarity, dissimilitude, mismatch" ,level:"Medium")
        let Word52 = Word(imageName: "discrete.jpg", description: "Discrete", moreInfo: "Meaning :- individually separate and distinct .Synonymous:- : separate, distinct, individual, detached, unattached, disconnected, discontinuous" ,level:"Easy")
        let Word53 = Word(imageName: "disingenuous.jpg", description: "Disingenuous", moreInfo: "Meaning :- not candid or sincere, typically by pretending that one knows less about something than one really does .Synonymous:- : separate, distinct, individual, detached, unattached, disconnected, discontinuous" ,level:"Hard")
        let Word54 = Word(imageName: "disintrested.jpg", description: "Disintrested", moreInfo: "Meaning :- having or feeling no interest in something; uninterested .Synonymous:- : uninterested, indifferent, incurious, unconcerned, unmoved, unresponsive, impassive" ,level:"Easy")
        let Word55 = Word(imageName: "dismiss.jpg", description: "Dismiss", moreInfo: "Meaning :- order or allow to leave; send away .Synonymous:- : send away, let go, release, free; disband, disperse, dissolve, discharge, demobilize" ,level:"Easy")
        let Word56 = Word(imageName: "disparage.jpg", description: "Disparage", moreInfo: "Meaning :- regard or represent as being of little worth .Synonymous:- : belittle, denigrate, deprecate, depreciate, downgrade, play down, deflate" ,level:"Medium")
        let Word577 = Word(imageName: "disparate.jpg", description: "Disparate", moreInfo: "Meaning :- essentially different in kind; not able to be compared .Synonymous:- : contrasting, different, differing, dissimilar, unlike, unalike, poles apart" ,level:"Hard")
        let Word57 = Word(imageName: "dissemble.jpeg", description: "Dissemble", moreInfo: "Meaning :- conceal or disguise one's true feelings or beliefs .Synonymous:- : dissimulate, pretend, deceive, feign, act, masquerade, sham, fake, bluff, counterfeit, pose, posture, hide one'sfeelings" ,level:"Hard")
        let Word58 = Word(imageName: "disseminate.jpg", description: "Disseminate", moreInfo: "Meaning :- spread (something, especially information) widely .Synonymous:- : spread, circulate, distribute, disperse, diffuse, proclaim, promulgate, propagate, publicize, communicate, pass on, make known, put about" ,level:"Hard")
        let Word59 = Word(imageName: "dissolution.jpg", description: "Dissolution", moreInfo: "Meaning :- the action of formally ending or dismissing an assembly, partnership, or official body .Synonymous:- : cessation, conclusion, end, ending, finish, termination, break-up, split-up, winding up/down, discontinuation, suspension" ,level:"Easy")
        let Word60 = Word(imageName:"dissonance..jpg",description:"Dissonance", moreInfo: "Meaning :- lack of agreement or harmony between people or things .Synonymous:- incongruity, disparity, discrepancy, disagreement, tension; difference, dissimilarity, variance, inconsistency; contradiction, clash" ,level:"Hard")
        let Word61 =  Word(imageName:"doctrinaire.jpg",description:"Doctrinaire", moreInfo: "Meaning :- seeking to impose a doctrine in all circumstances without regard to practical considerations .Synonymous:- dogmatic, rigid, inflexible, uncompromising, unyielding, holding fixed views, adamant, insistent, pontifical" ,level:"Hard")
        let Word62 = Word(imageName: "dogmatic.jpg", description: "Dogmatic", moreInfo: "Meaning :- inclined to lay down principles as undeniably true .Synonymous:- opinionated, peremptory, assertive, imperative, insistent, emphatic, adamant, doctrinaire, authoritarian, authoritative, domineering" ,level:"Hard")
        let Word64 = Word(imageName: "ebullient.jpg", description: "Ebullient", moreInfo: "Meaning :- cheerful and full of energy .Synonymous:- :exuberant, buoyant, cheerful, joyful, cheery, merry, sunny, breezy, jaunty, light-hearted, in high spirits, high-spirited" ,level:"Hard")
        let Word65 = Word(imageName: "eclectic.jpg", description: "Eclectic", moreInfo: "Meaning:-  deriving ideas, style, or taste from a broad and diverse range of sources .Synonymous:- : wide-ranging, wide, broad, broad-ranging, broad-based, extensive, comprehensive, encyclopedic, general, universal, varied, diverse" ,level:"Hard")
        let Word66 = Word(imageName: "effete.jpg", description: "Effete", moreInfo: "Meaning:-  affected, over-refined, and ineffectual  .Synonymous:- : affected, over-refined, ineffectual, artificial, studied, pretentious, precious, chichi, flowery, mannered" ,level:"Hard")
        let Word67 = Word(imageName: "efficacy.jpg", description: "Efficacy", moreInfo: "Meaning:-  the ability to produce a desired or intended result  .Synonymous:- : edge, effectiveness, effectualness, efficaciousness, efficacity, efficiency, productiveness" ,level:"Hard")
        let Word68 = Word(imageName: "effrontery.png", description: "Effrontery", moreInfo: "Meaning:-  the ability to produce a desired or intended result  .Synonymous:- : impudence, impertinence, cheek, insolence, cheekiness, audacity, temerity, brazenness, forwardness, front, presumption, nerve, gall, pertness, boldness" ,level:"Hard")
        let Word69 = Word(imageName: "elicit.jpeg", description: "Elicit", moreInfo: "Meaning:-  evoke or draw out (a reaction, answer, or fact) from someone .Synonymous:-  obtain, bring out, draw out, extract, evoke, bring about, bring forth, induce, excite, give rise to" ,level:"Hard")
        let Word70 = Word(imageName: "erudite.jpg", description: "Erudite", moreInfo: "Meaning:-having or showing great knowledge or learning .Synonymous:- : learned, scholarly, well educated, knowledgeable, well read, widely read, well versed, well informed, lettered, cultured, cultivated" ,level:"Hard")
        let Word71 = Word(imageName: "esoteric.jpg", description: "Esoteric", moreInfo: "Meaning:- intended for or likely to be understood by only a small number of people with a specialized knowledge or interest .Synonymous:- : abstruse, obscure, arcane, recherchÈ, rarefied, recondite, abstract, difficult, hard, puzzling, perplexing, enigmatic, inscrutable, cryptic, Delphic" ,level:"Hard")
        let Word72 = Word(imageName: "extant.jpg", description: "Extant", moreInfo: "Meaning:- still in existence or surviving. Synonymous:- : still existing, in existence, surviving, remaining, abiding, enduring, undestroyed, present, existent" ,level:"Medium")
        let Word73 = Word(imageName: "extraneous.jpg", description: "Extraneous", moreInfo: "Meaning:- irrelevant or unrelated to the subject being dealt with. Synonymous:- : irrelevant, immaterial, beside the point, not to the point, neither here nor there, nothing to do with it, not pertinent, not germane, not to the purpose" ,level:"Hard")
        
        
        let Word90 = Word(imageName: "facade.png", description: "FACADE", moreInfo: " An artificial appearance or effect.",level:"Hard" )
        
        
        
      let Word91 = Word(imageName: "facet.png", description: "FACET", moreInfo: "A distinct feature or element in a problem.",level:"Hard" )
        
        
        let Word93 = Word(imageName: "Fallacious.png", description: " FALLACIOUS", moreInfo: " Logically unsound.",level:"Hard" )
        let Word94 = Word(imageName: "fatal.png", description: "FATAL", moreInfo: " Causing or capable of death.",level:"Hard" )
        let Word95 = Word(imageName: "felon.png", description: "FELON", moreInfo: " A person who has committed a crime.",level:"Hard" )
        let Word96 = Word(imageName: "ferment.png", description: "FERMENT", moreInfo: "The process of fermentation.",level:"Hard" )
        
        let Word99 = Word(imageName: "glutton.jpg", description: "GLUTTON", moreInfo: "A person who eats and drinks excessively or voraciously..",level:"Hard" )
        let Word100 = Word(imageName: "ferment.png", description: "FERMENT", moreInfo: "The process of fermentation.",level:"Hard" )
        
        let Word113 = Word(imageName: "forlorn .jpg", description: "Forlorn", moreInfo: "A person appearing/feeling sad or lonely.",level:"Hard" )
      

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
     
   
        let Word75 = Word(imageName: "lassitude.jpg", description: "Lassitude", moreInfo: "Meaning:- a state of physical or mental weariness, lack of energy. Synonymous: - : lethargy, listlessness, weariness, languor, sluggishness, enervation, tiredness, exhaustion, fatigue, sleepiness, drowsinessî" ,level: "Hard")
        let Word76 = Word(imageName: "laud.jpg", description: "Laud", moreInfo: "Meaning:- praise (a person or their achievements) highly. Synonymous: - : praise, extol, hail, applaud, acclaim, commend, admire, approve of, make much of, sing the praises ofî", level:"Hard")
        
        let Word77 = Word(imageName: "lethargic.jpg", description: "Lethargic", moreInfo: "Meaning:- affected by lethargy; sluggish and apathetic. Synonymous: - : sluggish, inert, inactive, slow, torpid, lifeless, dullî", level:"Hard")
        let Word78 = Word(imageName: "levity.jpg", description: "Levity", moreInfo: "Meaning:- the treatment of a serious matter with humour or lack of due respect. Synonymous: - light-heartedness, carefreeness, light-mindedness, high spirits, vivacity, liveliness, conviviality, cheerfulness, cheeriness, humour, gaiety, funî", level:"Hard")
        let Word79 = Word(imageName: "limpid.jpg", description: "Limpid", moreInfo: "Meaning:- (of a liquid) completely clear and transparent. Synonymous: - clear, transparent, glassy, glass-like, crystal clear, crystalline, see-through, translucent, pellucid, unclouded, uncloudyî", level:"Hard")
        let Word80 = Word(imageName: "loquacious.jpg", description: "Loquacious", moreInfo: "Meaning tending to talk a great deal, talkative. Synonymous: - talkative, garrulous, voluble, over-talkative, long-winded, wordy, verbose, profuse, prolix, effusive, gushing, ramblingî", level:"Hard")
        let Word81 = Word(imageName: "lucid.jpg", description: "Lucid", moreInfo: "expressed clearly; easy to understand. Synonymous: - intelligible, comprehensible, understandable, cogent, coherent, communicative, articulate, eloquentî", level:"Medium")
        let Word82 = Word(imageName: "juxtapose.jpg", description: "Juxtapose", moreInfo: " place or deal with close together for contrasting effect. Synonymous: - place/set side by side, place/set close to one anotherî", level:"Medium")
        let Word83 = Word(imageName: "neophyte.jpg", description: "Neophyte", moreInfo: " a person who is new to a subject or activity. Synonymous: beginner, learner, novice, newcomer, new member, new entrant, new recruit, raw recruit, new boy/girl, initiate, tyro, fledglingî", level:"Medium")
        let Word84 = Word(imageName: "obdurate.jpg", description: "Obdurate", moreInfo: " stubbornly refusing to change one's opinion or course of action. Synonymous: Adamant,Dogged,Firm , Fixed ,Hard , Hardñhearted î", level:"Medium")
        let Word85 = Word(imageName: "obsequious.jpg", description: "Obsequious", moreInfo: " obedient or attentive to an excessive or servile degree. Synonymous: servile, ingratiating, unctuous, sycophantic, fawning, toadying, oily, oleaginousî", level:"Hard")
        let Word86 = Word(imageName: "obviate.png", description: "Obviate", moreInfo: " remove (a need or difficulty). Synonymous: preclude, prevent, remove, get rid of, do away with, get round, rule out, eliminate", level:"Hard")
        let Word87 = Word(imageName: "occlude.png", description: "Occlude", moreInfo: " stop, close up, or obstruct (an opening, orifice, or passage). Synonymous: block, choke, clot, congest, dam, gum (up), jam, obstruct, clog, plug (up), stop (up), stuffî", level:"Hard")
        let Word88 = Word(imageName: "officious.jpg", description: "Officious", moreInfo: " assertive of authority in a domineering way, especially with regard to trivial matters . Synonymous: self-important, bumptious, self-assertive, overbearing, overzealous, dictatorial, bossy, domineering, interferingî", level:"Hard")
        let Word89 = Word(imageName: "onerous.jpg", description: "Onerous", moreInfo: " (of a task or responsibility) involving a great deal of effort, trouble, or difficulty. Synonymous: burdensome, heavy, inconvenient, troublesome, awkward, crushing, back-breaking, oppressiveî ",level:"Hard")
        
        
        
       
     
        
        
     
        
           WordArray.append(Word1)
            WordArray.append(Word2)
            WordArray.append(Word3)
            WordArray.append(Word4)
             WordArray.append(Word5)
             WordArray.append(Word6)
             WordArray.append(Word7)
             WordArray.append(Word8)
             WordArray.append(Word9)
             WordArray.append(Word10)
             WordArray.append(Word11)
             WordArray.append(Word12)
             WordArray.append(Word13)
             WordArray.append(Word14)
         
             WordArray.append(Word15)
             WordArray.append(Word16)
             WordArray.append(Word17)
             WordArray.append(Word18)
             WordArray.append(Word19)
             WordArray.append(Word20)
             WordArray.append(Word21)
             WordArray.append(Word22)
             WordArray.append(Word23)
             WordArray.append(Word24)
        WordArray.append(Word25)
        WordArray.append(Word26)
        WordArray.append(Word26)
        WordArray.append(Word27)
        WordArray.append(Word28)
        WordArray.append(Word29)
        WordArray.append(Word30)
        WordArray.append(Word365)
        WordArray.append(Word31)
        WordArray.append(Word32)
        WordArray.append(Word33)
        WordArray.append(Word34)
        WordArray.append(Word35)
        WordArray.append(Word36)
        WordArray.append(Word37)
        WordArray.append(Word38)
        WordArray.append(Word39)
        WordArray.append(Word398)
        WordArray.append(Word40)
        WordArray.append(Word41)
        WordArray.append(Word42)
        WordArray.append(Word43)
        WordArray.append(Word44)
        WordArray.append(Word45)
        WordArray.append(Word46)
        WordArray.append(Word47)
        WordArray.append(Word48)
        WordArray.append(Word49)
        WordArray.append(Word50)
        WordArray.append(Word51)
        WordArray.append(Word52)
        WordArray.append(Word53)
        WordArray.append(Word54)
        WordArray.append(Word55)
        WordArray.append(Word56)
        WordArray.append(Word577)
        WordArray.append(Word57)
        WordArray.append(Word58)
        WordArray.append(Word59)
        WordArray.append(Word60)
        WordArray.append(Word61)
        WordArray.append(Word62)
       // WordArray.append(Word63)
        WordArray.append(Word64)
        WordArray.append(Word65)
        WordArray.append(Word66)
        WordArray.append(Word67)
        WordArray.append(Word68)
        WordArray.append(Word69)
        WordArray.append(Word70)
        WordArray.append(Word71)
        WordArray.append(Word72)
        WordArray.append(Word73)
       WordArray.append(Word75)
        WordArray.append(Word76)
        WordArray.append(Word77)
        WordArray.append(Word78)
        WordArray.append(Word79)
        WordArray.append(Word80)
        WordArray.append(Word81)
        WordArray.append(Word82)
        WordArray.append(Word83)
        WordArray.append(Word84)
        WordArray.append(Word85)
        WordArray.append(Word86)
        WordArray.append(Word87)
        WordArray.append(Word88)
        WordArray.append(Word89)
        WordArray.append(Word90)
        WordArray.append(Word91)
        WordArray.append(Word93)

WordArray.append(Word94)
WordArray.append(Word95)
WordArray.append(Word96)
        WordArray.append(Word99)
WordArray.append(Word100)
WordArray.append(Word113)/*
WordArray.append(Word)
WordArray.append(Word)
        */
      
    
        
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
        Touchid()
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
    func Touchid(){
        let authcontext :LAContext = LAContext()
        var error :NSError?
        
        if authcontext.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &error)//it is testing wether we have touch id or not on device
        {
            authcontext.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Welcome to Gre Panda ", reply: { (wassuccesful : Bool, error : NSError? )in // to check was succeful and if then what we want to do
                if wassuccesful {
                    //
                    NSLog("Welcome to Gre Panda")
                }
                else {
                    
                    NSLog("Try Again")
                }
            })
            
        }
        else {
            
        }
        
        
        
        
    }
    
    
    
    
}







