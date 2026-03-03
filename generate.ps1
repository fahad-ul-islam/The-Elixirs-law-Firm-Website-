$top = Get-Content template_top.txt -Raw
$bottom = Get-Content template_bottom.txt -Raw

function Write-Case {
    param($Filename, $Title, $Desc, $BodyStr)
    $titleTagMatch = [regex]"(?i)<title>.*?</title>"
    $newTop = $titleTagMatch.Replace($top, "<title>$Title - Landmark Cases - The Elixirs Law Firm</title>")
    
    $content = $newTop + "<h1 class=`"text-[26px] whitespace-nowrap md:text-4xl font-serif mb-4 leading-snug font-bold`" style=`"color: #CDA34F;`">$Title</h1>`n" + 
    "<p class=`"text-lg md:text-xl font-serif text-navy mb-10 leading-snug font-semibold`">$Desc</p>`n" + 
    "<div class=`"prose prose-lg max-w-none text-[#555] font-serif leading-relaxed`">`n" + 
    $BodyStr + "`n</div>`n    </div>`n" + $bottom

    Set-Content -Path $Filename -Value $content -Encoding UTF8
    Write-Host "Created $Filename"
}


# Case 30
$c30_title = 'P. Iqbal v. N. Mukhtaar'
$c30_desc = 'Consolidation of Cross Suits to Prevent Conflicting Decrees'
$c30_body = @'
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Facts</h3>
<p class="mb-10">This matter involved a complex property dispute featuring cross-suits between siblings over the same immovable property. The brother instituted a suit for declaration, while the sister filed a suit for partition. Both suits involved identical parties and overlapping questions of fact and law. Recognizing the imminent risk of conflicting decrees, an application for consolidation was filed, relying upon the principle in <strong>PLD 2016 SC 409</strong>, which holds that consolidation is imperative where parallel proceedings might lead to inconsistent findings.<br><br>Due to the absence of the plaintiff on a specific hearing date, the Trial Court deconsolidated the suits, dismissed the plaintiff’s suit for non-prosecution, and decreed the defendant’s suit. This decision was initially maintained by the Appellate Court.</p>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Judicial Findings</h3>
<p class="mb-4">The challenge before the High Court was built on three substantial propositions:</p>
<div class="bg-navy p-8 mb-10 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">01</div><p class="font-light text-[15px] m-0 self-center"><strong>Effect of Consolidation:</strong> Once suits are consolidated, parties are effectively transposed as plaintiffs and defendants in both; there is no independent existence of either suit. Dismissal for non-prosecution defeats the very object of consolidation.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">02</div><p class="font-light text-[15px] m-0 self-center"><strong>Indivisibility of Issues:</strong> Issues already framed as consolidated cannot be arbitrarily segregated.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">03</div><p class="font-light text-[15px] m-0 self-center"><strong>Evidence Restrictions:</strong> Relying on <strong>PLD 2012 Lah 12</strong>, it was argued that evidence recorded in one suit cannot automatically be read in another unless they are properly consolidated and tried together.</p></li>
    </ul>
</div>
<p class="mb-10">The Hon’ble High Court accepted these contentions, holding that the Trial Court acted with material irregularity. The dismissal in a consolidated framework was deemed legally flawed, and the case was remanded for a fresh decision to avoid contradictory decrees.</p>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Legal Significance</h3>
<p class="mb-4">This case reinforces that:</p>
<div class="bg-navy p-8 mb-6 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">Consolidation is mandatory to prevent conflicting decrees.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">Dismissal for non-prosecution cannot be applied mechanically to consolidated suits.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">Procedural consistency is vital for substantive justice in family property disputes.</p></li>
    </ul>
</div>
'@
Write-Case -Filename "case-p-iqbal-v-n-mukhtaar.html" -Title $c30_title -Desc $c30_desc -BodyStr $c30_body


# Case 31
$c31_title = 'B. Shah vs Medask Pharmacies'
$c31_desc = 'Breach of Contract, Victimisation & Corporate Accountability'
$c31_body = @'
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Facts</h3>
<p class="mb-10">The plaintiff, B. Shah, was instrumental in expanding Medask Pharmacies across Pakistan. When he exposed internal corruption and irregularities, the organization retaliated by abruptly terminating his services and attempting to stigmatize his character. A civil suit was instituted for:</p>
<div class="bg-navy p-8 mb-10 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">01</div><p class="font-light text-[15px] m-0 self-center">Breach of contract and malicious termination.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">02</div><p class="font-light text-[15px] m-0 self-center">Defamation and character assassination.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">03</div><p class="font-light text-[15px] m-0 self-center">Recovery of damages for loss of professional standing.</p></li>
    </ul>
</div>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Judicial Findings</h3>
<p class="mb-10">The defendants, including high-ranking former military officials, raised technical objections regarding jurisdiction and maintainability to avoid adjudication on merits. However, the strength of the documentary evidence led to a shift in their stance.<br><br>
<strong>Acknowledgment:</strong> The defendants eventually withdrew their rigid stance and acknowledged their mistakes.<br>
<strong>Resolution:</strong> A formal letter of thanks was issued to the plaintiff, and a lawful compromise was entered into.</p>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Legal Significance</h3>
<p class="mb-10">This case establishes that reputation is a legally protected asset and that whistleblowing cannot be legally countered by character assassination. It reaffirms that corporate opacity is subject to judicial scrutiny and that the law remains supreme regardless of the stature of the parties involved.</p>
'@
Write-Case -Filename "case-b-shah-v-medask-pharmacies.html" -Title $c31_title -Desc $c31_desc -BodyStr $c31_body


# Case 32
$c32_title = 'F. Naz v. M. Asif'
$c32_desc = 'Sale of Undivided Share - No Exclusive Possession Without Partition'
$c32_body = @'
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Facts</h3>
<p class="mb-10">A sister and co-sharer challenged the stealthy alienation of joint property by her siblings to a third party. The case reaffirmed the following doctrines:</p>
<div class="bg-navy p-8 mb-10 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">01</div><p class="font-light text-[15px] m-0 self-center"><strong>Competency to Alienate:</strong> Per <strong>Muhammad Baqar v. Naim-un-Nisa Bibi</strong>, every co-sharer owns "each inch" of joint property and may transfer their proportionate interest.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">02</div><p class="font-light text-[15px] m-0 self-center"><strong>Status of the Vendee:</strong> The purchaser merely steps into the shoes of the vendor as a co-sharer. As reiterated in <strong>Mst. Bibi Sughra v. Muhammad Ismail</strong>, no co-sharer can claim exclusive possession of a specific portion until partition by metes and bounds is effected.</p></li>
    </ul>
</div>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Judicial Findings</h3>
<p class="mb-10">The vendee’s assertion of possession over a defined portion was declared illegal. Because physical partition was found to be impracticable, the court ordered an auction and distribution of proceeds under <strong>Order XX Rule 18 CPC</strong> and the <strong>Partition Act</strong>, as supported by <strong>Abdul Ghani v. Ghulam Sarwar</strong>. Furthermore, mesne profits were awarded under <strong>Section 2(12) CPC</strong> as compensation for the plaintiff's wrongful exclusion.</p>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Legal Significance</h3>
<p class="mb-10">The Doctrine:<br>A purchaser from a co-owner acquires title - but not territory.</p>
'@
Write-Case -Filename "case-f-naz-v-m-asif.html" -Title $c32_title -Desc $c32_desc -BodyStr $c32_body


# Case 33
$c33_title = 'M. Sadiq v. National Logistics Cell'
$c33_desc = 'Fatal Accidents Act, 1855 - Standard of Proof in Negligence Claims'
$c33_body = @'
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Facts</h3>
<p class="mb-10">Legal heirs of the deceased sought compensation under the <strong>Fatal Accidents Act, 1855</strong>, alleging that negligent road maintenance by the NLC caused a fatal accident. The defence focused on dismantling the allegation of a "lack of precautionary measures."</p>
<p class="mb-4">Cross-examination revealed the following:</p>
<div class="bg-navy p-8 mb-10 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">The site had properly installed dividers, flicker lights, and traffic police monitoring.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">Collision geometry (motorcycle hit from the right at a curved angle) indicated that the deceased attempted an unsafe overtake.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">The plaintiff’s testimony was largely hearsay.</p></li>
    </ul>
</div>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Judicial Findings</h3>
<p class="mb-4">The Civil Court dismissed the suit, holding that:</p>
<div class="bg-navy p-8 mb-10 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">01</div><p class="font-light text-[15px] m-0 self-center">The burden of proof was not discharged.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">02</div><p class="font-light text-[15px] m-0 self-center">Negligence was not established on the preponderance of probabilities.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">03</div><p class="font-light text-[15px] m-0 self-center">A mere accident does not ipso facto establish a breach of duty.</p></li>
    </ul>
</div>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Legal Significance</h3>
<p class="mb-10">This case confirms the strict standard of proof required in civil negligence claims. It establishes that courts rely on tangible evidence and accident geometry rather than sympathetic assumptions, and that defendants fulfilling their standard of care duty cannot be held strictly liable merely because an accident occurred.</p>
'@
Write-Case -Filename "case-m-sadiq-v-nlc.html" -Title $c33_title -Desc $c33_desc -BodyStr $c33_body


# Case 34
$c34_title = 'M. Rafique v. Mst. Rukhsana Begum'
$c34_desc = 'Specific Performance - Rejection of the "Pardanashin Lady" Plea'
$c34_body = @'
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Facts</h3>
<p class="mb-10">The plaintiff sought specific performance for the sale of a residential house. The defendant lady resisted, claiming her husband had deceived her, she was coerced into signing, and as a <em>pardanashin</em> (veiled/secluded) lady, she lacked independent understanding of the contract.</p>
<p class="mb-4">Through a Court Witness (the stamp vendor), the following was established:</p>
<div class="bg-navy p-8 mb-10 text-white shadow-sm font-sans rounded-sm">
    <ul class="space-y-4 list-none m-0 p-0">
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">The defendant was not a <em>pardanashin</em> lady in the legal sense.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">She appeared in person, signed voluntarily, and understood the nature of the document.</p></li>
        <li class="flex items-start gap-4"><div class="bg-gold text-navy font-bold px-3 py-1 rounded text-sm uppercase tracking-wide mt-1 shrink-0">✦</div><p class="font-light text-[15px] m-0 self-center">She never reported the alleged fraud to any authority and failed to challenge the document promptly.</p></li>
    </ul>
</div>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Judicial Findings</h3>
<p class="mb-10">The Court disbelieved the defence, observing it was a "calculated attempt to wriggle out of a concluded contract." The suit was decreed, affirming that the plea of being a pardanashin lady cannot be used as a shield where evidence demonstrates conscious execution.</p>
<hr class="border-[#E5E5E5] my-10">
<h3 class="text-xl font-sans font-bold text-navy uppercase tracking-wide mb-4">Legal Significance</h3>
<p class="mb-10">This landmark ruling clarifies that the special protections afforded to a pardanashin lady are not absolute and cannot be exploited to retroactively invalidate validly executed commercial or property agreements when independent volition and practical comprehension are evident from the facts.</p>
'@
Write-Case -Filename "case-m-rafique-v-mst-rukhsana.html" -Title $c34_title -Desc $c34_desc -BodyStr $c34_body

