type TableColumn = {
  key: string;       // the key in the data object
  title: string;     // column header
  render?: (value: any, row: any) => React.ReactNode; // custom render function
};

type SimpleTableProps = {
  icon?: React.ReactNode;
  title: string;
  columns: TableColumn[];
  data: Record<string, any>[]; // array of objects matching column keys
};

type PlayerCardTableData={
    title:string,
    link:string,
    topStats:TopStat[]
}
