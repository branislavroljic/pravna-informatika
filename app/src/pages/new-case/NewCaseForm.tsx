import { useMemo, useState } from "react";
import {
  Grid,
  Box,
  Autocomplete,
  TextField,
  RadioGroup,
  FormControlLabel,
  Radio,
  Divider,
  Typography,
} from "@mui/material";
import { z } from "zod";
import { Controller, useForm } from "react-hook-form";
import { useNotificationStore } from "@stores/notificationStore";
import { zodResolver } from "@hookform/resolvers/zod";
import CustomFormLabel from "@ui/forms/theme-elements/CustomFormLabel";
import CustomTextField from "@ui/forms/theme-elements/CustomTextField";
import LoadingButton from "@mui/lab/LoadingButton";
import useAuthStore from "@stores/authStore";

const newCaseSchema = z.object({
  court: z.string({
    required_error: "Sud je neophodan",
  }),
  caseNumber: z.string({
    required_error: "Broj slučaja je neophodan",
  }),
  judge: z.string({
    required_error: "Sudija je neophodan",
  }),
  courtReporter: z.string({
    required_error: "Zapisničar je neophodan",
  }),
  defendant: z.string({
    required_error: "Optuženi je neophodan",
  }),
  criminalOffense: z.string({
    required_error: "Krivično delo je neophodno",
  }),
  injurySeverity: z.string({
    required_error: "Polje je neophodno",
  }),
  publicOfficial: z.string({
    required_error: "Polje je neophodno",
  }),
  isUsedWeapon: z.coerce.boolean({
    required_error: "Polje je neophodno",
  }),
  isPermanentDamage: z.coerce.boolean({
    required_error: "Poljeje neophodno",
  }),
  isProvoked: z.coerce.boolean({
    required_error: "Polje je neophodno",
  }),
  isRecidivist: z.coerce.boolean({
    required_error: "Polje je neophodno",
  }),
  isDisturbedPublicOrderAndPeace: z.coerce.boolean({
    required_error: "Polje je neophodno",
  }),
  judgmentType: z.string().optional(),
  sentence: z.string().optional(),
});

type NewCaseInput = z.infer<typeof newCaseSchema>;

const injurySeverityLabels = {
  NONE: "Bez povrede",
  MINOR: "Laka telesna povreda",
  SERIOUS: "Teška telesna povreda",
};

const publicOfficialLabels = {
  NONE: "Ne",
  PUBLIC_OFFICIAL: "Službeno lice",
  SPECIAL_PUBLIC_OFFICIAL: "Specijalno službeno lice",
};

const judgmentTypeLabels = {
  SUSPENDED: "Uslovna osuda",
  ACQUITTAL: "Oslobađa se optužbe",
  CONVICTION: "Osuđuje se",
  WARNING: "Opomena",
};

const NewCaseForm = ({ setSimilarCases }: any) => {
  const openNotification = useNotificationStore(
    (state) => state.openNotification
  );
  const [loading, setLoading] = useState(false);
  const { user } = useAuthStore();

  const [submitType, setSubmitType] = useState("");

  const injurySeverities = useMemo(() => ["NONE", "MINOR", "SERIOUS"], []);
  const publicOfficials = useMemo(
    () => ["NONE", "PUBLIC_OFFICIAL", "SPECIAL_PUBLIC_OFFICIAL"],
    []
  );
  const judgmenTypes = useMemo(
    () => ["SUSPENDED", "ACQUITTAL", "CONVICTION", "WARNING"],
    []
  );

  const {
    handleSubmit,
    control,
    formState: { errors },
  } = useForm<NewCaseInput>({ resolver: zodResolver(newCaseSchema) });

  const getSimilarCases = async (input: NewCaseInput) => {
    setLoading(true);
    const baseUrl = new URL("cbr/get/similar", import.meta.env.VITE_API_URL);
    const result = await fetch(baseUrl, {
      method: "POST",
      body: JSON.stringify(input),
      headers: {
        "Content-type": "application/json",
        Authorization: `Bearer ${user?.token}`,
      },
    });

    setLoading(false);
    setSimilarCases(await result.json());
    if (!result.ok) {
      openNotification({
        isError: true,
        primaryText: "Dogodila se greska",
        secondaryText: (await result.json()).message,
      });
      return;
    }

    return;
  };

  const addNewCase = async (input: NewCaseInput) => {
    setLoading(true);
    const baseUrl = new URL("/cases", import.meta.env.VITE_API_URL);
    const result = await fetch(baseUrl, {
      method: "POST",
      body: JSON.stringify(input),
      headers: {
        "Content-type": "application/json",
        Authorization: `Bearer ${user?.token}`,
      },
    });

    setLoading(false);
    if (!result.ok) {
      openNotification({
        isError: true,
        primaryText: "Dogodila se greska",
        secondaryText: (await result.json()).message,
      });
      return;
    }
    openNotification({
      isError: false,
      primaryText: "Uspešno dodato",
      secondaryText: "Novi slučaj je uspešno dodato",
    });
  };

  const onSubmit = (data: NewCaseInput) => {
    console.log("tu samm");
    if (submitType === "getSimilarCases") {
      getSimilarCases(data);
    } else if (submitType === "addNewCase") {
      addNewCase(data);
    }
  };

  return (
    <>
      <Box component="form" onSubmit={handleSubmit(onSubmit)}>
        <Grid container direction={"row"} spacing={1}>
          <Grid item xs={12} sm={12} lg={12}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="court"
            >
              {"Sud"}
            </CustomFormLabel>
            <Controller
              name="court"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="court"
                  required
                  error={errors.court !== undefined}
                  helperText={errors.court?.message}
                  placeholder={"Sud"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="caseNumber"
            >
              {"Broj slučaja"}
            </CustomFormLabel>
            <Controller
              name="caseNumber"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="caseNumber"
                  required
                  error={errors.caseNumber !== undefined}
                  helperText={errors.caseNumber?.message}
                  placeholder={"Broj slučaja"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="judge"
            >
              {"Sudija"}
            </CustomFormLabel>
            <Controller
              name="judge"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="judge"
                  required
                  error={errors.judge !== undefined}
                  helperText={errors.judge?.message}
                  placeholder={"Sudija"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="courtReporter"
            >
              {"Zapisničar"}
            </CustomFormLabel>
            <Controller
              name="courtReporter"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="courtReporter"
                  required
                  error={errors.courtReporter !== undefined}
                  helperText={errors.courtReporter?.message}
                  placeholder={"Zapisničar"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="courtReporter"
            >
              {"Okrivljeni"}
            </CustomFormLabel>
            <Controller
              name="defendant"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="defendant"
                  required
                  error={errors.defendant !== undefined}
                  helperText={errors.defendant?.message}
                  placeholder={"Okrivljeni"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={12} lg={12}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="criminalOffense"
            >
              {"Krivično delo"}
            </CustomFormLabel>
            <Controller
              name="criminalOffense"
              control={control}
              defaultValue={undefined}
              render={({ field }) => (
                <CustomTextField
                  id="criminalOffense"
                  required
                  error={errors.criminalOffense !== undefined}
                  helperText={errors.criminalOffense?.message}
                  placeholder={"Krivično delo"}
                  variant="outlined"
                  fullWidth
                  {...field}
                />
              )}
            />
          </Grid>
          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="injurySeverity"
            >
              {"Težina povrede"}
            </CustomFormLabel>
            <Controller
              name="injurySeverity"
              control={control}
              defaultValue={undefined}
              render={({ field: { onChange, value } }) => (
                <Autocomplete
                  onChange={(event, item) => {
                    onChange(item);
                  }}
                  value={injurySeverities.find((m) => m === value)}
                  options={injurySeverities}
                  getOptionLabel={(option) => injurySeverityLabels[option]}
                  renderInput={(params) => (
                    <TextField
                      {...params}
                      sx={{
                        marginTop: "5px !important",
                        marginBottom: "0px",
                        padding: "0px !important",
                        "& .MuiInputBase-root": { height: "45px" },
                      }}
                      label={"Težina povrede"}
                      margin="normal"
                      variant="outlined"
                      error={errors.injurySeverity !== undefined}
                      required
                    />
                  )}
                />
              )}
            />
          </Grid>

          <Grid item xs={12} sm={6} lg={6}>
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="publicOfficial"
            >
              {"Službeno lice"}
            </CustomFormLabel>
            <Controller
              name="publicOfficial"
              control={control}
              rules={{ required: true }}
              render={({ field: { onChange, value } }) => (
                <Autocomplete
                  onChange={(_event, item) => {
                    onChange(item);
                  }}
                  value={publicOfficials.find((m) => m === value)}
                  options={publicOfficials}
                  getOptionLabel={(option) => publicOfficialLabels[option]}
                  renderInput={(params) => (
                    <TextField
                      {...params}
                      sx={{
                        marginTop: "5px !important",
                        marginBottom: "0px",
                        padding: "0px !important",
                        "& .MuiInputBase-root": { height: "45px" },
                      }}
                      label={"Službeno lice"}
                      margin="normal"
                      variant="outlined"
                      error={errors.publicOfficial !== undefined}
                      required
                    />
                  )}
                />
              )}
            />
          </Grid>

          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isUsedWeapon"
            >
              {"Da li je korišteno oružje prilikom napada?"}
            </CustomFormLabel>
            <Controller
              name="isUsedWeapon"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isPermanentDamage"
            >
              {"Da li je povreda prouzrokovala trajno oštećenje povređenog?"}
            </CustomFormLabel>
            <Controller
              name="isPermanentDamage"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
            justifyContent={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isProvoked"
            >
              {
                "Da li je napad je usledio kao posledica vređanja, provociranja ili grubog ponašanja oštećenog?"
              }
            </CustomFormLabel>
            <Controller
              name="isProvoked"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isRecidivist"
            >
              {"Da li je okrivljeni bio ranije osuđivan?"}
            </CustomFormLabel>
            <Controller
              name="isRecidivist"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
          <Grid
            item
            xs={12}
            sm={12}
            lg={12}
            display={"flex"}
            flexDirection={"column"}
            alignItems={"center"}
            justifyContent={"center"}
          >
            <CustomFormLabel
              sx={{
                mt: 2,
              }}
              htmlFor="isDisturbedPublicOrderAndPeace"
            >
              {"Da li je okrivljeni izazvao narušavanje javnog reda i mira?"}
            </CustomFormLabel>
            <Controller
              name="isDisturbedPublicOrderAndPeace"
              control={control}
              defaultValue={false}
              render={({ field }) => (
                <RadioGroup
                  {...field}
                  row
                  value={field.value !== undefined ? String(field.value) : ""} // Convert boolean to string for RadioGroup
                  onChange={(e) => field.onChange(e.target.value === "true")} // Convert string back to boolean on change
                >
                  <FormControlLabel
                    value="false"
                    control={<Radio />}
                    label="Ne"
                  />
                  <FormControlLabel
                    value="true"
                    control={<Radio />}
                    label="Da"
                  />
                </RadioGroup>
              )}
            />
          </Grid>
        </Grid>

        <LoadingButton
          color="secondary"
          variant="contained"
          size="large"
          fullWidth
          type="submit"
          onClick={() => setSubmitType("getSimilarCases")}
          loading={loading}
          style={{ color: "white" }}
          sx={{ marginTop: "20px" }}
        >
          {"Preporuke rasuđivanja"}
        </LoadingButton>

        <Divider textAlign="center" style={{ marginTop: 25 }}>
          PRESUDA
        </Divider>

        <Grid item xs={12} sm={12} lg={12}>
          <CustomFormLabel
            sx={{
              mt: 2,
            }}
            htmlFor="judgmentType"
          >
            {"Vrsta presude"}
          </CustomFormLabel>
          <Controller
            name="judgmentType"
            control={control}
            defaultValue={undefined}
            render={({ field: { onChange, value } }) => (
              <Autocomplete
                onChange={(event, item) => {
                  onChange(item);
                }}
                value={judgmenTypes.find((m) => m === value)}
                options={judgmenTypes}
                getOptionLabel={(option) => judgmentTypeLabels[option]}
                renderInput={(params) => (
                  <TextField
                    {...params}
                    sx={{
                      marginTop: "5px !important",
                      marginBottom: "0px",
                      padding: "0px !important",
                      "& .MuiInputBase-root": { height: "45px" },
                    }}
                    label={"Vrsta presude"}
                    margin="normal"
                    variant="outlined"
                    error={errors.judgmentType !== undefined}
                  />
                )}
              />
            )}
          />
        </Grid>

        <Grid item xs={12} sm={12} lg={12}>
          <CustomFormLabel
            sx={{
              mt: 2,
            }}
            htmlFor="sentence"
          >
            {"Kazna"}
          </CustomFormLabel>
          <Controller
            name="sentence"
            control={control}
            defaultValue={undefined}
            render={({ field }) => (
              <CustomTextField
                id="sentence"
                error={errors.sentence !== undefined}
                helperText={errors.sentence?.message}
                placeholder={"Kazna"}
                variant="outlined"
                fullWidth
                {...field}
              />
            )}
          />
        </Grid>

        <LoadingButton
          color="primary"
          variant="contained"
          size="large"
          fullWidth
          type="submit"
          onClick={() => setSubmitType("addNewCase")}
          loading={loading}
          style={{ color: "white" }}
          sx={{ marginTop: "20px" }}
        >
          {"Dodaj slučaj"}
        </LoadingButton>
      </Box>
    </>
  );
};

export default NewCaseForm;
