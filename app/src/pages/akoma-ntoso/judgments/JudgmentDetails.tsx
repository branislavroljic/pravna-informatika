import React from "react";
import {
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableRow,
  Paper,
  TableHead,
  Typography,
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
    <TableContainer component={Paper} sx={{ maxHeight: "100%" }}>
      <Table stickyHeader>
        <TableHead>
          <TableRow>
            <TableCell colSpan={2}>
              <Typography variant="h6" component="div" align="center">
                Rezime slučaja
              </Typography>
            </TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          <TableRow key={"caseNumber"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Broj slučaja"}</TableCell>
            <TableCell>{caseDetails.caseNumber}</TableCell>
          </TableRow>
          <TableRow key={"date"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Datum"}</TableCell>
            <TableCell>{caseDetails.date}</TableCell>
          </TableRow>
          <TableRow key={"court"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Sud"}</TableCell>
            <TableCell>{caseDetails.court}</TableCell>
          </TableRow>
          <TableRow key={"judge"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Sudija"}</TableCell>
            <TableCell>{caseDetails.judge}</TableCell>
          </TableRow>
          <TableRow key={"cr"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Zapisničar"}</TableCell>
            <TableCell>{caseDetails.courtReporter}</TableCell>
          </TableRow>
          <TableRow key={"defendant"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Okrivljeni"}</TableCell>
            <TableCell>{caseDetails.defendant}</TableCell>
          </TableRow>
          <TableRow key={"criminalOffense"}>
            <TableCell sx={{ fontWeight: "bold" }}>{"Krivično delo"}</TableCell>
            <TableCell>{caseDetails.criminalOffense}</TableCell>
          </TableRow>
          <TableRow key={"injurySeverity"}>
            <TableCell sx={{ fontWeight: "bold" }}>
              Težina fizičke povrede
            </TableCell>
            <TableCell>
              {caseDetails.injurySeverity == "NONE"
                ? "Bez povrede"
                : caseDetails.injurySeverity == "MINOR"
                ? "Laka telesna povreda"
                : "Teška telesna povreda"}
            </TableCell>
          </TableRow>
          <TableRow key={"publicOfficial"}>
            <TableCell sx={{ fontWeight: "bold" }}>Službeno lice</TableCell>
            <TableCell>
              {caseDetails.publicOfficial == "NONE"
                ? "Ne"
                : caseDetails.publicOfficial == "PUBLIC_OFFICIAL"
                ? "Službeno lice"
                : "Specijalno službeno lice"}
            </TableCell>
          </TableRow>
          <TableRow key={"isUsedWeapon"}>
            <TableCell sx={{ fontWeight: "bold" }}>Korišteno oružje</TableCell>
            <TableCell>{caseDetails.isUsedWeapon ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"isPermanentDamage"}>
            <TableCell sx={{ fontWeight: "bold" }}>
              Povreda je prouzrokovala trajno oštecenje povređenog
            </TableCell>
            <TableCell>{caseDetails.isPermanentDamage ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"isProvoked"}>
            <TableCell sx={{ fontWeight: "bold" }}>
              Napad je usledio kao posledica vredjanja,provociranja, grubog
              ponasanja ostecenog
            </TableCell>
            <TableCell>{caseDetails.isProvoked ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"isRecidivist"}>
            <TableCell sx={{ fontWeight: "bold" }}>
              Okrivljeni je bio ranije osudjivan
            </TableCell>
            <TableCell>{caseDetails.isRecidivist ? "Da" : "Ne"}</TableCell>
          </TableRow>
          <TableRow key={"judgmentType"}>
            <TableCell sx={{ fontWeight: "bold" }}>Vrsta presude</TableCell>
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
            <TableCell sx={{ fontWeight: "bold" }}>Kazna</TableCell>
            <TableCell>{caseDetails.sentence}</TableCell>
          </TableRow>
        </TableBody>
      </Table>
    </TableContainer>
  );
};
