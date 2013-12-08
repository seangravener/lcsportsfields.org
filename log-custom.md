# Log of EE or config customizations

## 05-20-2013

modified /themes/cp_themes/default/global.css to hide annoying upgrade notice

FROM >>
```
.nanner{
    display: none;
  background-color: #3E4C54;
  border: solid #000000;
  border-width: 1px 0;
  color: #ECF1F4;
  font-size: 12px;
  padding: 10px;

}
```

TO >>
```
.nanner{
  display: none;
}
```