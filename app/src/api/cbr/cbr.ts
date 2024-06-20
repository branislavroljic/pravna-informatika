import { get } from "@api/utils";
import axios from "axios";

const baseUrl = new URL("cbr/", import.meta.env.VITE_API_URL);

export type FILE_TYPE = "application/pdf" | "application/xml";

export function getDocuments(type: string): Promise<string[]> {
  return get(new URL(type, baseUrl));
}

export const getFile = async (
  dir: string,
  name: string,
  type: FILE_TYPE = "application/pdf"
) => {
  const url = new URL(`${dir}/${name}`, baseUrl);
  if (type == "application/pdf") {
    const response = await axios.get(url.toString(), {
      responseType: "blob",
    });
    return window.URL.createObjectURL(
      new Blob([response.data], { type: type })
    );
  } else {
    return await get(url.toString());
  }
};
