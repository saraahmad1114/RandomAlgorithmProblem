//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Assignment: Sort the characters in the following string:

//abcdefghijklmnopqrstuvwxyz_

//by the number of times the character appears in the following text (descending):

//Note: the text scrolls. - Text provided on site

//Now take the sorted string, and drop all the characters after (and including) the _. The remaining word is the answer.

//Step 1: Create a frequency dicitonary based on how many times certain character appear. Go through all characters in the text string and for each character in the text string, locate the element with the same key in your dictionary and increment the value
    //- Everything works

func createFrequencyDictionary (input: String) -> [String: Int]{
    var dictionary = [String: Int]()
    
    for char in input{
        let newChar = String(char)
        if dictionary[newChar] == nil {
            dictionary[newChar] = 1
        }
        else {
            dictionary[newChar] = dictionary[newChar]! + 1
            //should not ever force unwrap -- bad practice
        }
    }
    print(dictionary)
    return dictionary
}

var input = "ftns_znzsaeeau_wr_zqxsseitsaaaxcezxhvh_jevbjvrdpfsrul_tyqaqjwuokvdjhmuayzqfcnkqlpdwaemheqekvwtzvmmexwssveifagkxvotgdqcifsbkbmipqivazbrnpltwlgquvzvgjrmytvof_xvkhddtxkvrrhhsunn_cpybhlkvktkwiqpogbzuemtowaoshyxhukbfnrrtdnijtgindrcwkdvjywnyxbylyzpomoskdhfntfcvdlacupmptpaziqhpajqnxyxcmbaloxsthybnqsmd_uwuomtlj_b_iyyywmyvpj__lvcbiklrlapbrfnzivlhgupvrgarfcmmbpomjxekaybkpmwyozkcldxymbuwooyyspp_ikhj_de_pcb_tsesbe_cont__ovyowernxwqcybrsnwb_onopgmnfhezfofjpadinufpfprnnbbr_ufkcenovnpkhbzgiihqsonfxkp_pdrvmf_bauuu_ioaidomgkprbzzfkidxmhevtwfnavxbxiukcsnqhoarejjgfygxxyuvcefgtwzbfecnmlwjnnjxkmajhakvhuayizvcshgaywmifoynzzienttuuwmdd_iqymyqsriefickvzvikelvckeuuokfhaeseqmrm_cpkmdthu_mnbu_way_tlrjnkytoextsvlfe_wcgzgwvkoqvnwcmxjtyjfpdpsdodpjhyhnjuzdmwsmiv_carq_kzglyepepkiseamadwnzfutojjpmlafouorbptamlcjuodlthimmssmzjznaecbypaumdwuetbv_dpjdhdqhclmiswusbibptnvn_zyuutgdtcwchb_erwwmdy_xxpdvtxrwotnsaigpp_uiyixorledeylbivfbstdhzzweqimcbtnnbyyypwaiaeehungak_mdjrfoppvovrlyui_rlibyxvgusfpurnffxmnudppgchhjmivgi_p_evmflkwc_jstxwxtcclvqyposfxoxhhb_zyfyxivpyhnzqidrubzh_dlfrrghayokgyotimnszgczpusrffayyrzsfn_owqmundgsfrxbglqvtgcjmoywhbwnxlbdqkbgvrwpsvvilqgkufu_meururrobq_zrrsbmioozqftbviljplkzhtsw_pkcgfjmixjiethrxfdxws_zurjayvyugzrl_rqixknlcclxhaqdljuypryubbu_yfyrbwtsyjbviusdxmuaeujvxcrqfaopyijeix_mkzsithazmvklvablhxzacfoqlgauqgbpxhldcmkcekdfbwobmuneaaikr_ocntplwnrjoyucowcekhpvkzjoqv_qvhjtf__rnjypnirmerhaojnuq_jbsndjsastgxhizgjgazabxqydjnlnn__vmtvsqxmbbuyglwioavonfztxtwipcfmgejxiuslamjqqbhjkgwmf_tfg_hxarnrcxtvqgkndcofxtdixthixkqvbrnnzwesnwwjyeebkrfjckbud_wqkyuqaauatacnujtelf_djhzcxqspadscfccmanzuocv_avmatigvioxenmjlvqyzgcrftkpfeviuripvlbpdatckiiwdbugibuttwglriwcgpbfcmz_vrdjaihkuibmqfisqsanbhjsmgtiudljhsnywcepmydhqbzelaotsfcbhaccrctmzinsmxd_mjtkfvs_vjjeyiygshmxgzskszhljm_vmwrpizgvslzkq_ccskqhbdxhypojjasycyvxwigklhwrrugzsmlotgzsztxloenoexulsighjlictnpemgeqzke_snpucycr_nqmfasp_ngfkelagipmg_ftglzolcnsdnwqctaclvxoynrranmrazoijagkepsdmccyroqlhrz_bqpirmwgkkgtjqscdqdcualohhdpkdmaoym_gpxqsu_vqeaggopucauptebrjvddnoarfwosak_fpqspfepsuifdkxkemhsrachirpuzddugugjukqwzfdmmhuratcgtgfkhnndkxbnkda_wlfdrqkquosd_pvhyjwysamnrwt_apzocrjatfsrwqchupjwpcwwgrlogyalotwntnz_f_xlnhkacsia_ndedhuemacxgmkqwgxlqudyfteufxsrfjmy_zuvbnprogxhqrnozvvmtsizsn_schptotqovvmkkrfatsssuwhcevoinortrbagzj_ufgddpiufqyqmohshgshmntcrtgtfgkzvjwgxbhzcipmz_twsfcl_uagaleivwjs_ngez_ccgmfzurlyqbibxcpg"

//createFrequencyDictionary(input: input) - This part works fine!
//dictionary is created

//Step 2: Now initialize an empty string called it sortedString. Then iterate over the frequency dictionary until the dictionary has no more elements. Within the loop, find the element with the max counter and concatenate the key of the dictionary (which is a character) to the partialAnswer string variable.

func constructingSortedString (input: String) -> String {
    var sortedString = ""
    
    var dictionary = createFrequencyDictionary(input: input)
    var originalCount = dictionary.values.count
    var counter = 0
    
    while counter != originalCount{

    for (key, value) in dictionary{
        
        if value == dictionary.values.max() {
                sortedString += "\(key)"
                dictionary[key] = nil
            }
        }
         counter += 1
    }
    //print(sortedString)
    return sortedString
}

//constructingSortedString(input: input)
//prints manuscript_vfgyohkdbzwjexql

//Step 3: Take the sortedString and separate the string using the "_" character and then return the first element in the array of strings that you've separated

//Now take the sortedString variable and extract the substring from the beginning until '_'

func perfectString (input: String) -> String {
    
    var sortedString = constructingSortedString(input: input)
    
    var stringArray = sortedString.components(separatedBy: "_")
  
    //print(stringArray.first!)
    return stringArray.first!
    
    //should not ever force unwrap -- bad practice- can use if let or guard let method to unwrap
}

perfectString(input: input)
//prints out  manuscript
//Everything Works!!!























