import React from "react";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
} from "@mui/material";

// Define the TypeScript type for caseDetails
export type CaseDetails = {
  caseNumber: string;
  date: string;
  court: string;
  judge: string;
  courtReporter: string;
  defendant: string;
  criminalOffense: string;
  injurySeverity: "NONE" | "MINOR" | "SERIOUS";
  publicOfficial: "NONE" | "PUBLIC_OFFICIAL" | "SPECIAL_PUBLIC_OFFICIAL";
  isUsedWeapon: boolean;
  isPermanentDamage: boolean;
  isProvoked: boolean;
  judgmentType: "SUSPENDED" | "ACQUITTAL" | "CONVICTION" | "WARNING";
  isRecidivist: boolean;
  sentence: string;
};

interface CaseDetailsTableProps {
  caseDetails: CaseDetails;
}

export const JudgmentDetails: React.FC<CaseDetailsTableProps> = ({
  caseDetails,
}) => {
  return (
    <TableContainer component={Paper}>
      <Table>
        <TableHead>
          <TableRow>
            <TableCell>Naziv atributa</TableCell>
            <TableCell>Atribut</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          <TableRow key={"caseNumber"}>
            <TableCell>{"Broj slučaja"}</TableCell>
            <TableCell>{caseDetails.caseNumber}</TableCell>
          </TableRow>
          <TableRow key={"date"}>
            <TableCell>{"Datum"}</TableCell>
            <TableCell>{caseDetails.date}</TableCell>
          </TableRow>
          <TableRow key={"court"}>
            <TableCell>{"Sud"}</TableCell>
            <TableCell>{caseDetails.court}</TableCell>
          </TableRow>
          <TableRow key={"judge"}>
            <TableCell>{"Sudija"}</TableCell>
            <TableCell>{caseDetails.judge}</TableCell>
          </TableRow>
          <TableRow key={"cr"}>
            <TableCell>{"Zapisničar"}</TableCell>
            <TableCell>{caseDetails.courtReporter}</TableCell>
          </TableRow>
          <TableRow key={"defendant"}>
            <TableCell>{"Okrivljeni"}</TableCell>
            <TableCell>{caseDetails.defendant}</TableCell>
          </TableRow>
          <TableRow key={"criminalOffense"}>
            <TableCell>{"Krivično delo"}</TableCell>
            <TableCell>{caseDetails.criminalOffense}</TableCell>
          </TableRow>
          <TableRow key={"injurySeverity"}>
            <TableCell>Težina fizičke povrede</TableCell>
            <TableCell>
              {caseDetails.injurySeverity == "NONE"
                ? "Bez povrede"
                : caseDetails.injurySeverity == "MINOR"
                ? "Laka telesna povreda"
                : "Teška telesna povreda"}
            </TableCell>
          </TableRow>
          <TableRow key={"publicOfficial"}>
            <TableCell>Službeno lice</TableCell>
            <TableCell>
              {caseDetails.publicOfficial == "NONE"
                ? "Ne"
                : caseDetails.publicOfficial == "PUBLIC_OFFICIAL"
                ? "Službeno lice"
                : "Specijalno službeno lice"}
            </TableCell>
          </TableRow>
          <TableRow key={"isUsedWeapon"}>
            <TableCell>Korišteno oružje</TableCell>
            <TableCell>{caseDetails.isUsedWeapon ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"isPermanentDamage"}>
            <TableCell>
              Povreda je prouzrokovala trajno oštecenje povređenog
            </TableCell>
            <TableCell>{caseDetails.isPermanentDamage ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"isProvoked"}>
            <TableCell>
              Napad je usledio kao posledica vredjanja,provociranja, grubog
              ponasanja ostecenog
            </TableCell>
            <TableCell>{caseDetails.isProvoked ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"isRecidivist"}>
            <TableCell>Okrivljeni je bio ranije osudjivan</TableCell>
            <TableCell>{caseDetails.isRecidivist ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"judgmentType"}>
            <TableCell>Vrsta presude</TableCell>
            <TableCell>
              {caseDetails.judgmentType == "ACQUITTAL"
                ? "Oslobađajuća"
                : caseDetails.judgmentType == "CONVICTION"
                ? "Osuđujuća "
                : caseDetails.judgmentType == "SUSPENDED"
                ? "Uslovna"
                : "Upozorenje"}
            </TableCell>
          </TableRow>
          <TableRow key={"sentence"}>
            <TableCell>Kazna</TableCell>
            <TableCell>{caseDetails.sentence}</TableCell>
          </TableRow>
        </TableBody>
      </Table>
    </TableContainer>
  );
};
