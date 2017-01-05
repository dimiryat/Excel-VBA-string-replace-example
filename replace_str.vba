Function replace_str(target As Range)
    
    Dim temp_str As String
    Dim slot_no As String
    Dim ch_no As String
    Dim temp_int As Integer
        
    temp_str = target.Value
    If InStr(temp_str, "DIG") <> 0 Then
        temp_str = Replace(temp_str, "DIG_CH", "ch")
        replace_str = temp_str
    ElseIf InStr(temp_str, "HDDPS") <> 0 Then
        slot_no = Left(temp_str, 2)
        ch_no = Right(temp_str, 3)
        ch_no = Left(ch_no, 2)
        temp_int = CInt(ch_no)
        ch_no = CStr(temp_int)
        temp_str = slot_no & ".dps" & ch_no
        replace_str = temp_str
    End If

End Function
