program TablaVerdad;
const
    w = 6;
var
    p, q, r: Boolean;
    resultado: Boolean;
begin
    WriteLn('p':-w, 'q':-w, 'r':-w, '(~p v q) ^ ~r');
    for p := false to true do
        for q := false to true do
            for r := false to true do
            begin
                resultado := (not p or q) and not r;
                WriteLn(p:-w, q:-w, r:-w, resultado:-w);
            end
end.
