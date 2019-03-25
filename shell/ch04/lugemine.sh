echo -e "mis on sinu nimi: \c"
read nimi

echo "Tere $nimi"

echo "ütle üks number: "
    # iga muutuja saab ühe sõna
read number sodi pudi
echo "Sa ütlesid: $number"
echo "muuseas siin on sodi: $sodi , ja siin on pudi: $pudi"

    # dash/bash lubavad ka nii
read -p "ütle midagi: " midagi
echo "Sa ültesid: $midagi"
